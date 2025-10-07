package androidx.test.core.view;

import android.os.SystemClock;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MotionEventBuilder {
    private long downTime = 0;
    private long eventTime = SystemClock.uptimeMillis();
    private int action = 0;
    private int actionIndex = -1;
    private List<MotionEvent.PointerProperties> pointerPropertiesList = new ArrayList();
    private List<MotionEvent.PointerCoords> pointerCoordsList = new ArrayList();
    private int metaState = 0;
    private int buttonState = 0;
    private float xPrecision = 0.0f;
    private float yPrecision = 0.0f;
    private int deviceId = 0;
    private int edgeFlags = 0;
    private int source = 0;
    private int flags = 0;

    private MotionEventBuilder() {
    }

    private static void checkState(boolean z, String str) {
        if (z) {
        } else {
            throw new IllegalStateException(str);
        }
    }

    public static MotionEventBuilder newBuilder() {
        return new MotionEventBuilder();
    }

    public MotionEvent build() {
        if (this.pointerPropertiesList.size() == 0) {
            setPointer(0.0f, 0.0f);
        }
        int i = this.actionIndex;
        if (i != -1) {
            this.action = (i << 8) | this.action;
        }
        long j = this.downTime;
        long j2 = this.eventTime;
        int i2 = this.action;
        int size = this.pointerPropertiesList.size();
        List<MotionEvent.PointerProperties> list = this.pointerPropertiesList;
        MotionEvent.PointerProperties[] pointerPropertiesArr = (MotionEvent.PointerProperties[]) list.toArray(new MotionEvent.PointerProperties[list.size()]);
        List<MotionEvent.PointerCoords> list2 = this.pointerCoordsList;
        return MotionEvent.obtain(j, j2, i2, size, pointerPropertiesArr, (MotionEvent.PointerCoords[]) list2.toArray(new MotionEvent.PointerCoords[list2.size()]), this.metaState, this.buttonState, this.xPrecision, this.yPrecision, this.deviceId, this.edgeFlags, this.source, this.flags);
    }

    public MotionEventBuilder setAction(int i) {
        this.action = i;
        return this;
    }

    public MotionEventBuilder setActionIndex(int i) {
        boolean z;
        if (i <= 255) {
            z = true;
        } else {
            z = false;
        }
        checkState(z, "pointerIndex must be less than 0xff");
        this.actionIndex = i;
        return this;
    }

    public MotionEventBuilder setButtonState(int i) {
        this.buttonState = i;
        return this;
    }

    public MotionEventBuilder setDeviceId(int i) {
        this.deviceId = i;
        return this;
    }

    public MotionEventBuilder setDownTime(long j) {
        this.downTime = j;
        return this;
    }

    public MotionEventBuilder setEdgeFlags(int i) {
        this.edgeFlags = i;
        return this;
    }

    public MotionEventBuilder setEventTime(long j) {
        this.eventTime = j;
        return this;
    }

    public MotionEventBuilder setFlags(int i) {
        this.flags = i;
        return this;
    }

    public MotionEventBuilder setMetaState(int i) {
        this.metaState = i;
        return this;
    }

    public MotionEventBuilder setPointer(float f, float f2) {
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = this.pointerPropertiesList.size();
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = f;
        pointerCoords.y = f2;
        return setPointer(pointerProperties, pointerCoords);
    }

    public MotionEventBuilder setSource(int i) {
        this.source = i;
        return this;
    }

    public MotionEventBuilder setXPrecision(float f) {
        this.xPrecision = f;
        return this;
    }

    public MotionEventBuilder setYPrecision(float f) {
        this.yPrecision = f;
        return this;
    }

    public MotionEventBuilder setPointer(MotionEvent.PointerProperties pointerProperties, MotionEvent.PointerCoords pointerCoords) {
        this.pointerPropertiesList.add(pointerProperties);
        this.pointerCoordsList.add(pointerCoords);
        return this;
    }
}
