package androidx.camera.video;

import android.net.Uri;
import androidx.annotation.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_OutputResults extends OutputResults {
    private final Uri outputUri;

    public AutoValue_OutputResults(Uri uri) {
        if (uri != null) {
            this.outputUri = uri;
            return;
        }
        throw new NullPointerException("Null outputUri");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof OutputResults) {
            return this.outputUri.equals(((OutputResults) obj).getOutputUri());
        }
        return false;
    }

    @Override // androidx.camera.video.OutputResults
    @NonNull
    public Uri getOutputUri() {
        return this.outputUri;
    }

    public int hashCode() {
        return this.outputUri.hashCode() ^ 1000003;
    }

    public String toString() {
        return "OutputResults{outputUri=" + this.outputUri + "}";
    }
}
