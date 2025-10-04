package androidx.camera.core;

import com.google.auto.value.AutoValue;

/* loaded from: classes.dex */
final class ImageReaderFormatRecommender {

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class FormatCombo {
        public static FormatCombo create(int i, int i2) {
            return new AutoValue_ImageReaderFormatRecommender_FormatCombo(i, i2);
        }

        public abstract int imageAnalysisFormat();

        public abstract int imageCaptureFormat();
    }

    private ImageReaderFormatRecommender() {
    }

    public static FormatCombo chooseCombo() {
        return FormatCombo.create(256, 35);
    }
}
