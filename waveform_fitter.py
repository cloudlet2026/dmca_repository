import sys
import numpy as np
import math
from PySide2.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout, 
                                QHBoxLayout, QLabel, QLineEdit, QPushButton, 
                                QTextEdit, QFileDialog, QGroupBox, QTabWidget,
                                QFormLayout, QMessageBox, QComboBox)
from PySide2.QtCore import Qt
from PySide2.QtGui import QFont
import matplotlib.pyplot as plt
from matplotlib.backends.backend_qtagg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.figure import Figure

plt.rcParams['font.sans-serif'] = ['TimesSimSun','Microsoft YaHei', 'SimHei', 'SimSun', 'FangSong', 'KaiTi']
plt.rcParams['axes.unicode_minus'] = False
# 设置默认字体大小为 12
plt.rcParams['font.size'] = 12
plt.rcParams['axes.titlesize'] = 14
plt.rcParams['axes.labelsize'] = 14
plt.rcParams['xtick.labelsize'] = 12
plt.rcParams['ytick.labelsize'] = 12
plt.rcParams['legend.fontsize'] = 12
app_font = QFont("Microsoft YaHei", 10)
QApplication.setFont(app_font)

class WaveformFitter(QMainWindow):
    def __init__(self):
        super().__init__()
        self.data = None
        self.fit_result = None
        self.init_ui()
        
    def init_ui(self):
        self.setWindowTitle("波形拟合工具")
        self.setGeometry(360, 140, 1200, 800)
        self.setFixedSize(1200, 800)
        
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QHBoxLayout(central_widget)
        
        left_panel = QWidget()
        left_layout = QVBoxLayout(left_panel)
        left_panel.setMaximumWidth(400)
        
        tab_widget = QTabWidget()
        
        tab_file = QWidget()
        file_layout = QVBoxLayout(tab_file)
        
        file_group = QGroupBox("文件输入")
        file_form = QFormLayout()
        self.file_path_edit = QLineEdit()
        self.file_path_edit.setPlaceholderText("选择数据文件...")
        self.browse_btn = QPushButton("浏览")
        self.browse_btn.clicked.connect(self.browse_file)
        
        # 进制选择
        self.radix_combo = QComboBox()
        self.radix_combo.addItem("自动检测", "auto")
        self.radix_combo.addItem("十进制 (Decimal)", 10)
        self.radix_combo.addItem("十六进制 (Hex)", 16)
        self.radix_combo.addItem("二进制 (Binary)", 2)
        self.radix_combo.addItem("八进制 (Octal)", 8)
        self.radix_combo.currentIndexChanged.connect(self.update_placeholder)
        
        file_form.addRow("文件路径:", self.file_path_edit)
        file_form.addRow("数据进制:", self.radix_combo)
        file_form.addRow("", self.browse_btn)
        file_group.setLayout(file_form)
        
        self.load_file_btn = QPushButton("加载文件")
        self.load_file_btn.clicked.connect(self.load_file)
        
        file_layout.addWidget(file_group)
        file_layout.addWidget(self.load_file_btn)
        file_layout.addStretch()
        
        tab_paste = QWidget()
        paste_layout = QVBoxLayout(tab_paste)
        
        paste_group = QGroupBox("直接粘贴数据")
        paste_layout_inner = QVBoxLayout()
        
        # 粘贴区域的进制选择
        paste_radix_layout = QHBoxLayout()
        paste_radix_layout.addWidget(QLabel("数据进制:"))
        self.paste_radix_combo = QComboBox()
        self.paste_radix_combo.addItem("自动检测", "auto")
        self.paste_radix_combo.addItem("十进制 (Decimal)", 10)
        self.paste_radix_combo.addItem("十六进制 (Hex)", 16)
        self.paste_radix_combo.addItem("二进制 (Binary)", 2)
        self.paste_radix_combo.addItem("八进制 (Octal)", 8)
        self.paste_radix_combo.currentIndexChanged.connect(self.update_paste_placeholder)
        paste_radix_layout.addWidget(self.paste_radix_combo)
        paste_radix_layout.addStretch()
        
        self.paste_text = QTextEdit()
        self.paste_text.setPlaceholderText("在此粘贴数据，每行一个数值或逗号分隔的数值...")
        self.paste_text.setMaximumHeight(300)
        
        paste_layout_inner.addLayout(paste_radix_layout)
        paste_layout_inner.addWidget(self.paste_text)
        paste_group.setLayout(paste_layout_inner)
        
        self.load_paste_btn = QPushButton("加载粘贴的数据")
        self.load_paste_btn.clicked.connect(self.load_paste_data)
        
        paste_layout.addWidget(paste_group)
        paste_layout.addWidget(self.load_paste_btn)
        paste_layout.addStretch()
        
        tab_widget.addTab(tab_file, "文件输入")
        tab_widget.addTab(tab_paste, "粘贴输入")
        
        left_layout.addWidget(tab_widget)
        
        fit_group = QGroupBox("拟合参数")
        fit_form = QFormLayout()
        
        # 拟合模式选择
        self.fit_mode_combo = QComboBox()
        self.fit_mode_combo.addItem("双指数", "double")
        self.fit_mode_combo.addItem("单指数", "single")
        self.fit_mode_combo.currentIndexChanged.connect(self.on_fit_mode_changed)
        
        
        self.na_edit = QLineEdit("64")
        self.nb_na_edit = QLineEdit("64")
        
        fit_form.addRow("拟合模式:", self.fit_mode_combo)
        fit_form.addRow("na:", self.na_edit)
        fit_form.addRow("nb-na:", self.nb_na_edit)
        
        fit_group.setLayout(fit_form)
        
        self.fit_btn = QPushButton("开始拟合")
        self.fit_btn.clicked.connect(self.fit_waveform)
        self.fit_btn.setStyleSheet("background-color: #4CAF50; color: white; font-weight: bold; padding: 10px;")
        
        result_group = QGroupBox("拟合结果")
        result_layout = QVBoxLayout()
        
        self.result_text = QTextEdit()
        self.result_text.setReadOnly(True)
        self.result_text.setMaximumHeight(250)
        result_layout.addWidget(self.result_text)
        
        result_group.setLayout(result_layout)
        
        left_layout.addWidget(fit_group)
        left_layout.addWidget(self.fit_btn)
        left_layout.addWidget(result_group)
        
        right_panel = QWidget()
        right_layout = QVBoxLayout(right_panel)
        
        plot_group = QGroupBox("波形显示")
        plot_layout = QVBoxLayout()
        
        self.figure = Figure(figsize=(8, 6))
        self.canvas = FigureCanvas(self.figure)
        self.ax = self.figure.add_subplot(111)
        self.ax.set_xlabel("采样点")
        self.ax.set_ylabel("幅度")
        self.ax.grid(True, alpha=0.3)
        
        plot_layout.addWidget(self.canvas)
        plot_group.setLayout(plot_layout)
        
        right_layout.addWidget(plot_group)
        
        main_layout.addWidget(left_panel)
        main_layout.addWidget(right_panel)
        
    def browse_file(self):
        file_path, _ = QFileDialog.getOpenFileName(
            self, 
            "选择数据文件", 
            "", 
            "所有文件 (*.*)"
        )
        if file_path:
            self.file_path_edit.setText(file_path)
    
    def load_file(self):
        file_path = self.file_path_edit.text()
        if not file_path:
            QMessageBox.warning(self, "警告", "请先选择文件")
            return
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            radix = self.radix_combo.currentData()
            data = self.parse_data(content, radix)
            if data is not None:
                self.data = data
                self.plot_data()
                radix_name = self.radix_combo.currentText()
                self.result_text.setText(f"成功加载 {len(data)} 个数据点\n数据进制: {radix_name}")
        except Exception as e:
            QMessageBox.critical(self, "错误", f"加载文件失败: {str(e)}")
    
    def load_paste_data(self):
        content = self.paste_text.toPlainText()
        if not content.strip():
            QMessageBox.warning(self, "警告", "请先粘贴数据")
            return
        
        try:
            radix = self.paste_radix_combo.currentData()
            data = self.parse_data(content, radix)
            if data is not None:
                self.data = data
                self.plot_data()
                radix_name = self.paste_radix_combo.currentText()
                self.result_text.setText(f"成功加载 {len(data)} 个数据点\n数据进制: {radix_name}")
        except Exception as e:
            QMessageBox.critical(self, "错误", f"解析数据失败: {str(e)}")
    
    def update_placeholder(self):
        radix = self.radix_combo.currentData()
        if radix == "auto":
            self.file_path_edit.setPlaceholderText("选择数据文件 (自动检测进制)...")
        elif radix == 10:
            self.file_path_edit.setPlaceholderText("选择数据文件 (十进制: 100, 200, 300)...")
        elif radix == 16:
            self.file_path_edit.setPlaceholderText("选择数据文件 (十六进制: 0x64, 0xC8, 0x12C)...")
        elif radix == 2:
            self.file_path_edit.setPlaceholderText("选择数据文件 (二进制: 0b1100100, 0b11001000)...")
        elif radix == 8:
            self.file_path_edit.setPlaceholderText("选择数据文件 (八进制: 0o144, 0o310)...")
    
    def update_paste_placeholder(self):
        radix = self.paste_radix_combo.currentData()
        if radix == "auto":
            self.paste_text.setPlaceholderText("在此粘贴数据，每行一个数值或逗号分隔的数值 (自动检测进制)...")
        elif radix == 10:
            self.paste_text.setPlaceholderText("在此粘贴十进制数据，每行一个数值或逗号分隔...\n例如: 100, 200, 300")
        elif radix == 16:
            self.paste_text.setPlaceholderText("在此粘贴十六进制数据，每行一个数值或逗号分隔...\n例如: 0x64, 0xC8, 0x12C\n或: 64, C8, 12C")
        elif radix == 2:
            self.paste_text.setPlaceholderText("在此粘贴二进制数据，每行一个数值或逗号分隔...\n例如: 0b1100100, 0b11001000\n或: 1100100, 11001000")
        elif radix == 8:
            self.paste_text.setPlaceholderText("在此粘贴八进制数据，每行一个数值或逗号分隔...\n例如: 0o144, 0o310\n或: 144, 310")
    
    def parse_number(self, text, radix):
        text = text.strip().upper()
        if not text:
            return None
        
        # 自动检测模式
        if radix == "auto":
            # 检查是否有进制前缀
            if text.startswith("0X"):
                return int(text, 16)
            elif text.startswith("0B"):
                return int(text, 2)
            elif text.startswith("0O"):
                return int(text, 8)
            elif text.startswith("0") and len(text) > 1 and text[1].isdigit():
                # 可能是八进制
                try:
                    return int(text, 8)
                except ValueError:
                    pass
            
            # 尝试十进制
            try:
                return float(text)
            except ValueError:
                # 尝试十六进制（无0x前缀）
                try:
                    return int(text, 16)
                except ValueError:
                    return None
        
        # 指定进制模式
        if radix == 16:
            # 移除0x前缀（如果有）
            if text.startswith("0X"):
                text = text[2:]
            try:
                return int(text, 16)
            except ValueError:
                return None
        elif radix == 2:
            # 移除0b前缀（如果有）
            if text.startswith("0B"):
                text = text[2:]
            try:
                return int(text, 2)
            except ValueError:
                return None
        elif radix == 8:
            # 移除0o前缀（如果有）
            if text.startswith("0O"):
                text = text[2:]
            try:
                return int(text, 8)
            except ValueError:
                return None
        elif radix == 10:
            try:
                return float(text)
            except ValueError:
                return None
        
        return None
    
    def parse_data(self, content, radix="auto"):
        values = []
        lines = content.strip().split('\n')
        
        for line in lines:
            line = line.strip()
            if not line:
                continue
            
            if ',' in line:
                parts = line.split(',')
                for part in parts:
                    part = part.strip()
                    if part:
                        val = self.parse_number(part, radix)
                        if val is not None:
                            values.append(val)
            else:
                val = self.parse_number(line, radix)
                if val is not None:
                    values.append(val)
        
        if len(values) == 0:
            QMessageBox.warning(self, "警告", "未找到有效的数据")
            return None
        
        return np.array(values)
    
    def plot_data(self):
        if self.data is None:
            return
        
        self.ax.clear()
        self.ax.plot(self.data, 'b-', linewidth=1.5, label='原始数据')
        self.ax.set_xlabel("采样点")
        self.ax.set_ylabel("幅度")
        self.ax.grid(True, alpha=0.3)
        self.ax.legend()
        self.canvas.draw()
    
    def fit_waveform(self):
        if self.data is None:
            QMessageBox.warning(self, "警告", "请先加载数据")
            return
        
        try:
            data = np.array(self.data)
            
            baseline_window = min(10, len(data))
            baseline = np.mean(data[:baseline_window])
            data_corr = data - baseline
            
            idx_max = np.argmax(data_corr)
            val_max = data_corr[idx_max]
            
            if val_max <= 0:
                QMessageBox.warning(self, "警告", "波形幅度过低，无法拟合")
                return
            
            if idx_max < 2:
                QMessageBox.warning(self, "警告", "波形峰值位置过早")
                return
            
            diff = np.diff(data_corr[:idx_max+1])
            if len(diff) == 0:
                QMessageBox.warning(self, "警告", "无法找到上升沿")
                return
            
            idx_slope = np.argmax(diff)
            max_slope = diff[idx_slope]
            
            if max_slope <= 0:
                QMessageBox.warning(self, "警告", "上升沿斜率异常")
                return
            
            t_slope = idx_slope
            y_slope = data_corr[t_slope]
            
            t_start = t_slope - y_slope / max_slope
            t_M = idx_max - t_start
            
            if t_M <= 1e-6:
                QMessageBox.warning(self, "警告", "峰值时间计算错误 (t_M <= 0)")
                return
            
            post_peak_data = data_corr[idx_max:]
            mask_tail = (post_peak_data < 0.6 * val_max) & (post_peak_data > 0.1 * val_max)
            tail_indices = np.where(mask_tail)[0] + idx_max
            
            if len(tail_indices) < 5:
                mask_tail = (post_peak_data < 0.8 * val_max) & (post_peak_data > 0.05 * val_max)
                tail_indices = np.where(mask_tail)[0] + idx_max
                if len(tail_indices) < 3:
                    QMessageBox.warning(self, "警告", "拟合失败：无法提取有效尾部")
                    return
            
            t_tail = tail_indices - t_start
            y_tail = data_corr[tail_indices]
            
            ln_y = np.log(y_tail)
            slope, intercept = np.polyfit(t_tail, ln_y, 1)
            
            tau_F = -1.0 / slope
            
            if tau_F <= 0:
                QMessageBox.warning(self, "警告", "拟合得到无效的 tau_F (<=0)")
                return
            
            ratio = t_M / tau_F
            
            if ratio >= 1 or ratio <= 0:
                QMessageBox.warning(self, "警告", f"t_M/tau_F 比值异常 ({ratio:.3f})，无法求解 tau_R")
                return
            
            def func_val(k):
                if k == 1: 
                    return 1.0
                return np.log(k) / (k - 1.0)
            
            k_min = 1.0001
            k_max = 10000.0
            
            if func_val(k_min) < ratio:
                k_sol = 1.0001
            elif func_val(k_max) > ratio:
                k_sol = k_max
            else:
                for _ in range(50):
                    k_mid = (k_min + k_max) / 2
                    val = func_val(k_mid)
                    if val > ratio:
                        k_min = k_mid
                    else:
                        k_max = k_mid
                k_sol = (k_min + k_max) / 2
            
            tau_R = tau_F / k_sol
            
            # 判断拟合模式
            fit_mode = self.fit_mode_combo.currentData()
            
            use_single_exp = False
            if fit_mode == "single":
                use_single_exp = True
                result_text = f"拟合结果 [单指数]:\n"
            else:
                result_text = f"拟合结果 [双指数]:\n"
            
            result_text += f"{'='*40}\n"
            result_text += f"峰值 Vm: {val_max:.2f} @ index {idx_max}\n"
            result_text += f"计算 t_start: {t_start:.2f}, t_M: {t_M:.2f}\n"
            result_text += f"拟合 tau_F: {tau_F:.2f} (采样点)\n"
            
            if use_single_exp:
                # 单指数拟合
                result_text += f"拟合模式: 单指数 (tau_R ≈ tau_F)\n"
                tau_R = tau_F  # 单指数时，tau_R = tau_F
                k_sol = 1.0
            else:
                # 双指数拟合
                result_text += f"计算 tau_R: {tau_R:.2f} (采样点)\n"
                result_text += f"比值 k: {k_sol:.2f}\n"
            
            self.fit_result = {
                'tau_R': tau_R,
                'tau_F': tau_F,
                'val_max': val_max,
                'idx_max': idx_max,
                't_start': t_start,
                't_M': t_M,
                'k': k_sol,
                'baseline': baseline,
                'single_exp': use_single_exp
            }
            
            try:
                na_text = self.na_edit.text()
                nb_na_text = self.nb_na_edit.text()
                
                if na_text and nb_na_text:
                    na = int(na_text)
                    nb = int(na_text) + int(nb_na_text)
                    
                    a = math.exp(-1.0 / tau_F)
                    b = math.exp(-1.0 / tau_R)
                    
                    denominator = na * (a - b)
                    
                    if abs(denominator) < 1e-9:
                        result_text += f"\n寄存器计算错误：除数为零\n"
                    else:
                        inv_na = 1.0 / denominator
                        a_over_na = a * inv_na
                        
                        na_bits = na & 0x1FF
                        nb_bits = nb & 0x1FF
                        
                        reg1_value = (nb_bits << 16) | na_bits
                        reg2_value = int(round(a_over_na * (1 << 30)))
                        reg3_value = int(round(inv_na * (1 << 30)))
                        reg4_value = int(round(b * (1 << 30)))
                        reg5_value = int((0x08 << 24) | (0x0c << 16) | 0x1e)
                        
                        result_text += f"\n寄存器值:\n"
                        result_text += f"{'='*25}\n"
                        result_text += f"Reg1: 0x{reg1_value:08X}\n"
                        result_text += f"Reg2: {reg2_value}\n"
                        result_text += f"Reg3: {reg3_value}\n"
                        result_text += f"Reg4: {reg4_value}\n"
                        result_text += f"Reg5: 0x{reg5_value:08X}\n"
            except Exception as e_reg:
                result_text += f"\n寄存器计算错误: {str(e_reg)}\n"
            
            self.result_text.setText(result_text)
            
            self.plot_fit_result(data_corr, t_start, tau_R, tau_F, val_max, idx_max, use_single_exp)
            
        except Exception as e:
            QMessageBox.critical(self, "错误", f"拟合过程出错: {str(e)}")
    
    def on_fit_mode_changed(self, index):
        mode = self.fit_mode_combo.currentData()
    
    def plot_fit_result(self, data_corr, t_start, tau_R, tau_F, val_max, idx_max, single_exp=False):
        self.ax.clear()
        
        x = np.arange(len(data_corr))
        self.ax.plot(x, data_corr, 'b-', linewidth=1.5, label='原始数据(基线校正)')
        
        t_fit = np.linspace(0, len(data_corr) - t_start, 500)
        
        def theoretical_curve_double(t, tau_R, tau_F, Vm, t_M):
            k = tau_F / tau_R
            if abs(k - 1) < 1e-6:
                return Vm * (t / t_M) * np.exp(1 - t / t_M)
            else:
                return Vm * (k / (k - 1)) * (1 - np.exp(-t / tau_R)) * np.exp(-t / tau_F)
        
        def theoretical_curve_single(t, tau_F, Vm, t_M):
            # 单指数拟合: V(t) = Vm * (t/t_M) * exp(1 - t/t_M)
            # 这是当 tau_R -> 0 时的极限情况
            return Vm * (t / t_M) * np.exp(1 - t / t_M)
        
        if single_exp:
            y_fit = theoretical_curve_single(t_fit, tau_F, val_max, idx_max - t_start)
            label = '单指数拟合曲线'
        else:
            y_fit = theoretical_curve_double(t_fit, tau_R, tau_F, val_max, idx_max - t_start)
            label = '双指数拟合曲线'
        
        self.ax.plot(t_fit + t_start, y_fit, 'r--', linewidth=2, label=label)
        
        self.ax.axvline(x=t_start, color='g', linestyle=':', alpha=0.7, label=f'起始位置={t_start:.0f}')
        self.ax.axvline(x=idx_max, color='m', linestyle=':', alpha=0.7, label=f'峰值位置={idx_max}')
        
        self.ax.set_xlabel("采样点")
        self.ax.set_ylabel("幅度")
        self.ax.grid(True, alpha=0.3)
        self.ax.legend()
        self.canvas.draw()


def main():
    app = QApplication(sys.argv)
    window = WaveformFitter()
    window.show()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
