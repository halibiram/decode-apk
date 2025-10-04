package androidx.core.content;

import android.content.UriMatcher;
import android.net.Uri;
import androidx.core.util.Predicate;
import defpackage.C0642x79bc353;

/* loaded from: classes.dex */
public class UriMatcherCompat {
    private UriMatcherCompat() {
    }

    public static Predicate<Uri> asPredicate(UriMatcher uriMatcher) {
        return new C0642x79bc353(uriMatcher, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$asPredicate$0(UriMatcher uriMatcher, Uri uri) {
        if (uriMatcher.match(uri) != -1) {
            return true;
        }
        return false;
    }
}
