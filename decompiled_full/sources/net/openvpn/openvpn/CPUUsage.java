package net.openvpn.openvpn;

/* loaded from: classes3.dex */
public class CPUUsage {
    private double end_time = 0.0d;
    private boolean halted = false;
    private double start_time = cpu_usage();

    private static native double cpu_usage();

    public void stop() {
        if (!this.halted) {
            this.end_time = cpu_usage();
            this.halted = true;
        }
    }

    public double usage() {
        double cpu_usage;
        if (this.halted) {
            cpu_usage = this.end_time;
        } else {
            cpu_usage = cpu_usage();
        }
        return cpu_usage - this.start_time;
    }
}
