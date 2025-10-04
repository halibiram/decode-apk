package androidx.test.platform.device;

/* loaded from: classes.dex */
public interface DeviceController {

    /* loaded from: classes.dex */
    public enum ScreenOrientation {
        PORTRAIT,
        LANDSCAPE
    }

    void setDeviceMode(int i);

    void setScreenOrientation(int i);
}
