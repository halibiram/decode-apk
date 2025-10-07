package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraAccessException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class CameraAccessExceptionCompat extends Exception {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int CAMERA_DEPRECATED_HAL = 1000;
    public static final int CAMERA_DISABLED = 1;
    public static final int CAMERA_DISCONNECTED = 2;
    public static final int CAMERA_ERROR = 3;
    public static final int CAMERA_IN_USE = 4;
    public static final int MAX_CAMERAS_IN_USE = 5;
    private final CameraAccessException mCameraAccessException;
    private final int mReason;

    @VisibleForTesting
    static final Set<Integer> PLATFORM_ERRORS = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(4, 5, 1, 2, 3)));
    public static final int CAMERA_UNAVAILABLE_DO_NOT_DISTURB = 10001;
    public static final int CAMERA_CHARACTERISTICS_CREATION_ERROR = 10002;

    @VisibleForTesting
    static final Set<Integer> COMPAT_ERRORS = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(Integer.valueOf(CAMERA_UNAVAILABLE_DO_NOT_DISTURB), Integer.valueOf(CAMERA_CHARACTERISTICS_CREATION_ERROR))));

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface AccessError {
    }

    public CameraAccessExceptionCompat(int i) {
        super(getDefaultMessage(i));
        this.mReason = i;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(i)) ? new CameraAccessException(i) : null;
    }

    private static String getCombinedMessage(int i, String str) {
        return String.format("%s (%d): %s", getProblemString(i), Integer.valueOf(i), str);
    }

    @Nullable
    private static String getDefaultMessage(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 10001) {
                                if (i != 10002) {
                                    return null;
                                }
                                return "Failed to create CameraCharacteristics.";
                            }
                            return "Some API 28 devices cannot access the camera when the device is in \"Do Not Disturb\" mode. The camera will not be accessible until \"Do Not Disturb\" mode is disabled.";
                        }
                        return "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed.";
                    }
                    return "The camera device is in use already";
                }
                return "The camera device is currently in the error state; no further calls to it will succeed.";
            }
            return "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device.";
        }
        return "The camera is disabled due to a device policy, and cannot be opened.";
    }

    @NonNull
    private static String getProblemString(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 1000) {
                                if (i != 10001) {
                                    if (i != 10002) {
                                        return "<UNKNOWN ERROR>";
                                    }
                                    return "CAMERA_CHARACTERISTICS_CREATION_ERROR";
                                }
                                return "CAMERA_UNAVAILABLE_DO_NOT_DISTURB";
                            }
                            return "CAMERA_DEPRECATED_HAL";
                        }
                        return "MAX_CAMERAS_IN_USE";
                    }
                    return "CAMERA_IN_USE";
                }
                return "CAMERA_ERROR";
            }
            return "CAMERA_DISCONNECTED";
        }
        return "CAMERA_DISABLED";
    }

    @NonNull
    public static CameraAccessExceptionCompat toCameraAccessExceptionCompat(@NonNull CameraAccessException cameraAccessException) {
        if (cameraAccessException != null) {
            return new CameraAccessExceptionCompat(cameraAccessException);
        }
        throw new NullPointerException("cameraAccessException should not be null");
    }

    public final int getReason() {
        return this.mReason;
    }

    @Nullable
    public CameraAccessException toCameraAccessException() {
        return this.mCameraAccessException;
    }

    public CameraAccessExceptionCompat(int i, @Nullable String str) {
        super(getCombinedMessage(i, str));
        this.mReason = i;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(i)) ? new CameraAccessException(i, str) : null;
    }

    public CameraAccessExceptionCompat(int i, @Nullable String str, @Nullable Throwable th) {
        super(getCombinedMessage(i, str), th);
        this.mReason = i;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(i)) ? new CameraAccessException(i, str, th) : null;
    }

    public CameraAccessExceptionCompat(int i, @Nullable Throwable th) {
        super(getDefaultMessage(i), th);
        this.mReason = i;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(i)) ? new CameraAccessException(i, null, th) : null;
    }

    private CameraAccessExceptionCompat(@NonNull CameraAccessException cameraAccessException) {
        super(cameraAccessException.getMessage(), cameraAccessException.getCause());
        this.mReason = cameraAccessException.getReason();
        this.mCameraAccessException = cameraAccessException;
    }
}
