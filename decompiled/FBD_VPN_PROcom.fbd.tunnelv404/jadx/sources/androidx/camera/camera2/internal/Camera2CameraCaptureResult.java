package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;
import defpackage.AbstractC0496x71528f20;
import java.nio.BufferUnderflowException;

/* loaded from: classes.dex */
public class Camera2CameraCaptureResult implements CameraCaptureResult {
    private static final String TAG = "C2CameraCaptureResult";
    private final CaptureResult mCaptureResult;
    private final TagBundle mTagBundle;

    public Camera2CameraCaptureResult(@NonNull TagBundle tagBundle, @NonNull CaptureResult captureResult) {
        this.mTagBundle = tagBundle;
        this.mCaptureResult = captureResult;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AeMode getAeMode() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AE_MODE);
        if (num == null) {
            return CameraCaptureMetaData.AeMode.UNKNOWN;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue != 1) {
                if (intValue != 2) {
                    if (intValue != 3) {
                        if (intValue != 4) {
                            if (intValue != 5) {
                                return CameraCaptureMetaData.AeMode.UNKNOWN;
                            }
                            if (Build.VERSION.SDK_INT >= 28) {
                                return CameraCaptureMetaData.AeMode.ON_EXTERNAL_FLASH;
                            }
                            return CameraCaptureMetaData.AeMode.UNKNOWN;
                        }
                        return CameraCaptureMetaData.AeMode.ON_AUTO_FLASH_REDEYE;
                    }
                    return CameraCaptureMetaData.AeMode.ON_ALWAYS_FLASH;
                }
                return CameraCaptureMetaData.AeMode.ON_AUTO_FLASH;
            }
            return CameraCaptureMetaData.AeMode.ON;
        }
        return CameraCaptureMetaData.AeMode.OFF;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AeState getAeState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        if (num == null) {
            return CameraCaptureMetaData.AeState.UNKNOWN;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue != 1) {
                if (intValue != 2) {
                    if (intValue != 3) {
                        if (intValue != 4) {
                            if (intValue != 5) {
                                Logger.e(TAG, "Undefined ae state: " + num);
                                return CameraCaptureMetaData.AeState.UNKNOWN;
                            }
                        } else {
                            return CameraCaptureMetaData.AeState.FLASH_REQUIRED;
                        }
                    } else {
                        return CameraCaptureMetaData.AeState.LOCKED;
                    }
                } else {
                    return CameraCaptureMetaData.AeState.CONVERGED;
                }
            }
            return CameraCaptureMetaData.AeState.SEARCHING;
        }
        return CameraCaptureMetaData.AeState.INACTIVE;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AfMode getAfMode() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
        if (num == null) {
            return CameraCaptureMetaData.AfMode.UNKNOWN;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue != 1 && intValue != 2) {
                if (intValue != 3 && intValue != 4) {
                    if (intValue != 5) {
                        Logger.e(TAG, "Undefined af mode: " + num);
                        return CameraCaptureMetaData.AfMode.UNKNOWN;
                    }
                } else {
                    return CameraCaptureMetaData.AfMode.ON_CONTINUOUS_AUTO;
                }
            } else {
                return CameraCaptureMetaData.AfMode.ON_MANUAL_AUTO;
            }
        }
        return CameraCaptureMetaData.AfMode.OFF;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AfState getAfState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        if (num == null) {
            return CameraCaptureMetaData.AfState.UNKNOWN;
        }
        switch (num.intValue()) {
            case 0:
                return CameraCaptureMetaData.AfState.INACTIVE;
            case 1:
            case 3:
                return CameraCaptureMetaData.AfState.SCANNING;
            case 2:
                return CameraCaptureMetaData.AfState.PASSIVE_FOCUSED;
            case 4:
                return CameraCaptureMetaData.AfState.LOCKED_FOCUSED;
            case 5:
                return CameraCaptureMetaData.AfState.LOCKED_NOT_FOCUSED;
            case 6:
                return CameraCaptureMetaData.AfState.PASSIVE_NOT_FOCUSED;
            default:
                Logger.e(TAG, "Undefined af state: " + num);
                return CameraCaptureMetaData.AfState.UNKNOWN;
        }
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AwbMode getAwbMode() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AWB_MODE);
        if (num == null) {
            return CameraCaptureMetaData.AwbMode.UNKNOWN;
        }
        switch (num.intValue()) {
            case 0:
                return CameraCaptureMetaData.AwbMode.OFF;
            case 1:
                return CameraCaptureMetaData.AwbMode.AUTO;
            case 2:
                return CameraCaptureMetaData.AwbMode.INCANDESCENT;
            case 3:
                return CameraCaptureMetaData.AwbMode.FLUORESCENT;
            case 4:
                return CameraCaptureMetaData.AwbMode.WARM_FLUORESCENT;
            case 5:
                return CameraCaptureMetaData.AwbMode.DAYLIGHT;
            case 6:
                return CameraCaptureMetaData.AwbMode.CLOUDY_DAYLIGHT;
            case 7:
                return CameraCaptureMetaData.AwbMode.TWILIGHT;
            case 8:
                return CameraCaptureMetaData.AwbMode.SHADE;
            default:
                return CameraCaptureMetaData.AwbMode.UNKNOWN;
        }
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AwbState getAwbState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AWB_STATE);
        if (num == null) {
            return CameraCaptureMetaData.AwbState.UNKNOWN;
        }
        int intValue = num.intValue();
        if (intValue != 0) {
            if (intValue != 1) {
                if (intValue != 2) {
                    if (intValue != 3) {
                        Logger.e(TAG, "Undefined awb state: " + num);
                        return CameraCaptureMetaData.AwbState.UNKNOWN;
                    }
                    return CameraCaptureMetaData.AwbState.LOCKED;
                }
                return CameraCaptureMetaData.AwbState.CONVERGED;
            }
            return CameraCaptureMetaData.AwbState.METERING;
        }
        return CameraCaptureMetaData.AwbState.INACTIVE;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CaptureResult getCaptureResult() {
        return this.mCaptureResult;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.FlashState getFlashState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.FLASH_STATE);
        if (num == null) {
            return CameraCaptureMetaData.FlashState.UNKNOWN;
        }
        int intValue = num.intValue();
        if (intValue != 0 && intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3 && intValue != 4) {
                    Logger.e(TAG, "Undefined flash state: " + num);
                    return CameraCaptureMetaData.FlashState.UNKNOWN;
                }
                return CameraCaptureMetaData.FlashState.FIRED;
            }
            return CameraCaptureMetaData.FlashState.READY;
        }
        return CameraCaptureMetaData.FlashState.NONE;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public TagBundle getTagBundle() {
        return this.mTagBundle;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        Long l = (Long) this.mCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public void populateExifData(@NonNull ExifData.Builder builder) {
        CaptureResult.Key key;
        AbstractC0496x71528f20.m3121x3271d0aa(this, builder);
        try {
            Integer num = (Integer) this.mCaptureResult.get(CaptureResult.JPEG_ORIENTATION);
            if (num != null) {
                builder.setOrientationDegrees(num.intValue());
            }
        } catch (BufferUnderflowException unused) {
            Logger.w(TAG, "Failed to get JPEG orientation.");
        }
        Long l = (Long) this.mCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        if (l != null) {
            builder.setExposureTimeNanos(l.longValue());
        }
        Float f = (Float) this.mCaptureResult.get(CaptureResult.LENS_APERTURE);
        if (f != null) {
            builder.setLensFNumber(f.floatValue());
        }
        Integer num2 = (Integer) this.mCaptureResult.get(CaptureResult.SENSOR_SENSITIVITY);
        if (num2 != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                CaptureResult captureResult = this.mCaptureResult;
                key = CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST;
                if (((Integer) captureResult.get(key)) != null) {
                    num2 = Integer.valueOf(num2.intValue() * ((int) (r1.intValue() / 100.0f)));
                }
            }
            builder.setIso(num2.intValue());
        }
        Float f2 = (Float) this.mCaptureResult.get(CaptureResult.LENS_FOCAL_LENGTH);
        if (f2 != null) {
            builder.setFocalLength(f2.floatValue());
        }
        Integer num3 = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AWB_MODE);
        if (num3 != null) {
            ExifData.WhiteBalanceMode whiteBalanceMode = ExifData.WhiteBalanceMode.AUTO;
            if (num3.intValue() == 0) {
                whiteBalanceMode = ExifData.WhiteBalanceMode.MANUAL;
            }
            builder.setWhiteBalanceMode(whiteBalanceMode);
        }
    }

    public Camera2CameraCaptureResult(@NonNull CaptureResult captureResult) {
        this(TagBundle.emptyBundle(), captureResult);
    }
}
