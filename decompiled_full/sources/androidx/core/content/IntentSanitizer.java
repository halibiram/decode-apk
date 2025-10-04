package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.core.util.Predicate;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0642x79bc353;
import defpackage.C0674xf27a772;
import defpackage.C0889x166c060e;
import defpackage.C0890xa828f83;
import defpackage.C1041xdfed09e1;
import j$.util.Objects;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class IntentSanitizer {
    private static final String TAG = "IntentSanitizer";
    private boolean mAllowAnyComponent;
    private boolean mAllowClipDataText;
    private boolean mAllowIdentifier;
    private boolean mAllowSelector;
    private boolean mAllowSourceBounds;
    private Predicate<String> mAllowedActions;
    private Predicate<String> mAllowedCategories;
    private Predicate<ClipData> mAllowedClipData;
    private Predicate<Uri> mAllowedClipDataUri;
    private Predicate<ComponentName> mAllowedComponents;
    private Predicate<Uri> mAllowedData;
    private Map<String, Predicate<Object>> mAllowedExtras;
    private int mAllowedFlags;
    private Predicate<String> mAllowedPackages;
    private Predicate<String> mAllowedTypes;

    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        public static String getIdentifier(Intent intent) {
            return intent.getIdentifier();
        }

        public static Intent setIdentifier(Intent intent, String str) {
            return intent.setIdentifier(str);
        }
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static class Api31Impl {
        private Api31Impl() {
        }

        public static void checkOtherMembers(int i, ClipData.Item item, Consumer<String> consumer) {
            if (item.getHtmlText() != null || item.getIntent() != null || item.getTextLinks() != null) {
                consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private static final int HISTORY_STACK_FLAGS = 2112614400;
        private static final int RECEIVER_FLAGS = 2015363072;
        private boolean mAllowAnyComponent;
        private boolean mAllowIdentifier;
        private boolean mAllowSelector;
        private boolean mAllowSomeComponents;
        private boolean mAllowSourceBounds;
        private int mAllowedFlags;
        private Predicate<String> mAllowedActions = new C0890xa828f83(2);
        private Predicate<Uri> mAllowedData = new C0890xa828f83(3);
        private Predicate<String> mAllowedTypes = new C0890xa828f83(4);
        private Predicate<String> mAllowedCategories = new C0890xa828f83(5);
        private Predicate<String> mAllowedPackages = new C0890xa828f83(6);
        private Predicate<ComponentName> mAllowedComponents = new C0890xa828f83(7);
        private Map<String, Predicate<Object>> mAllowedExtras = new HashMap();
        private boolean mAllowClipDataText = false;
        private Predicate<Uri> mAllowedClipDataUri = new C0890xa828f83(8);
        private Predicate<ClipData> mAllowedClipData = new C0890xa828f83(9);

        public static /* synthetic */ boolean lambda$allowAnyComponent$10(ComponentName componentName) {
            return true;
        }

        public static /* synthetic */ boolean lambda$allowClipDataUriWithAuthority$11(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static /* synthetic */ boolean lambda$allowComponentWithPackage$9(String str, ComponentName componentName) {
            return str.equals(componentName.getPackageName());
        }

        public static /* synthetic */ boolean lambda$allowDataWithAuthority$8(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static /* synthetic */ boolean lambda$allowExtra$12(Object obj) {
            return true;
        }

        public static /* synthetic */ boolean lambda$allowExtra$13(Class cls, Predicate predicate, Object obj) {
            if (cls.isInstance(obj) && predicate.test(cls.cast(obj))) {
                return true;
            }
            return false;
        }

        public static /* synthetic */ boolean lambda$allowExtra$14(Object obj) {
            return false;
        }

        public static /* synthetic */ boolean lambda$allowExtraOutput$16(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static /* synthetic */ boolean lambda$allowExtraStreamUriWithAuthority$15(String str, Uri uri) {
            return str.equals(uri.getAuthority());
        }

        public static /* synthetic */ boolean lambda$new$0(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$1(Uri uri) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$2(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$3(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$4(String str) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$5(ComponentName componentName) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$6(Uri uri) {
            return false;
        }

        public static /* synthetic */ boolean lambda$new$7(ClipData clipData) {
            return false;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAction(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            allowAction(new C0889x166c060e(str, 1));
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAnyComponent() {
            this.mAllowAnyComponent = true;
            this.mAllowedComponents = new C0890xa828f83(0);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowCategory(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowCategory(new C0889x166c060e(str, 1));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipData(Predicate<ClipData> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedClipData = this.mAllowedClipData.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataText() {
            this.mAllowClipDataText = true;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataUri(Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedClipDataUri = this.mAllowedClipDataUri.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowClipDataUriWithAuthority(String str) {
            Preconditions.checkNotNull(str);
            return allowClipDataUri(new C0889x166c060e(str, 4));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponent(ComponentName componentName) {
            Preconditions.checkNotNull(componentName);
            Objects.requireNonNull(componentName);
            return allowComponent(new C0642x79bc353(componentName, 1));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponentWithPackage(String str) {
            Preconditions.checkNotNull(str);
            return allowComponent(new C0889x166c060e(str, 2));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowData(Predicate<Uri> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedData = this.mAllowedData.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowDataWithAuthority(String str) {
            Preconditions.checkNotNull(str);
            allowData(new C0889x166c060e(str, 3));
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtra(String str, Class<?> cls) {
            return allowExtra(str, cls, new C0890xa828f83(10));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraOutput(String str) {
            allowExtra("output", Uri.class, new C0889x166c060e(str, 0));
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraStream(Predicate<Uri> predicate) {
            allowExtra("android.intent.extra.STREAM", Uri.class, predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraStreamUriWithAuthority(String str) {
            Preconditions.checkNotNull(str);
            allowExtra("android.intent.extra.STREAM", Uri.class, new C0889x166c060e(str, 5));
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowFlags(int i) {
            this.mAllowedFlags = i | this.mAllowedFlags;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowHistoryStackFlags() {
            this.mAllowedFlags |= HISTORY_STACK_FLAGS;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowIdentifier() {
            this.mAllowIdentifier = true;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowPackage(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowPackage(new C0889x166c060e(str, 1));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowReceiverFlags() {
            this.mAllowedFlags |= RECEIVER_FLAGS;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowSelector() {
            this.mAllowSelector = true;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowSourceBounds() {
            this.mAllowSourceBounds = true;
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowType(String str) {
            Preconditions.checkNotNull(str);
            Objects.requireNonNull(str);
            return allowType(new C0889x166c060e(str, 1));
        }

        public IntentSanitizer build() {
            boolean z = this.mAllowAnyComponent;
            if ((z && this.mAllowSomeComponents) || (!z && !this.mAllowSomeComponents)) {
                throw new SecurityException("You must call either allowAnyComponent or one or more of the allowComponent methods; but not both.");
            }
            IntentSanitizer intentSanitizer = new IntentSanitizer();
            intentSanitizer.mAllowedFlags = this.mAllowedFlags;
            intentSanitizer.mAllowedActions = this.mAllowedActions;
            intentSanitizer.mAllowedData = this.mAllowedData;
            intentSanitizer.mAllowedTypes = this.mAllowedTypes;
            intentSanitizer.mAllowedCategories = this.mAllowedCategories;
            intentSanitizer.mAllowedPackages = this.mAllowedPackages;
            intentSanitizer.mAllowAnyComponent = this.mAllowAnyComponent;
            intentSanitizer.mAllowedComponents = this.mAllowedComponents;
            intentSanitizer.mAllowedExtras = this.mAllowedExtras;
            intentSanitizer.mAllowClipDataText = this.mAllowClipDataText;
            intentSanitizer.mAllowedClipDataUri = this.mAllowedClipDataUri;
            intentSanitizer.mAllowedClipData = this.mAllowedClipData;
            intentSanitizer.mAllowIdentifier = this.mAllowIdentifier;
            intentSanitizer.mAllowSelector = this.mAllowSelector;
            intentSanitizer.mAllowSourceBounds = this.mAllowSourceBounds;
            return intentSanitizer;
        }

        @SuppressLint({"BuilderSetStyle"})
        public <T> Builder allowExtra(String str, Class<T> cls, Predicate<T> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(predicate);
            return allowExtra(str, new C1041xdfed09e1(cls, predicate));
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtraOutput(Predicate<Uri> predicate) {
            allowExtra("output", Uri.class, predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowAction(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedActions = this.mAllowedActions.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowCategory(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedCategories = this.mAllowedCategories.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowComponent(Predicate<ComponentName> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowSomeComponents = true;
            this.mAllowedComponents = this.mAllowedComponents.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowPackage(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedPackages = this.mAllowedPackages.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowType(Predicate<String> predicate) {
            Preconditions.checkNotNull(predicate);
            this.mAllowedTypes = this.mAllowedTypes.or(predicate);
            return this;
        }

        @SuppressLint({"BuilderSetStyle"})
        public Builder allowExtra(String str, Predicate<Object> predicate) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(predicate);
            Predicate<Object> predicate2 = this.mAllowedExtras.get(str);
            if (predicate2 == null) {
                predicate2 = new C0890xa828f83(1);
            }
            this.mAllowedExtras.put(str, predicate2.or(predicate));
            return this;
        }
    }

    public /* synthetic */ IntentSanitizer(AnonymousClass1 anonymousClass1) {
        this();
    }

    private static void checkOtherMembers(int i, ClipData.Item item, Consumer<String> consumer) {
        if (item.getHtmlText() != null || item.getIntent() != null) {
            consumer.accept("ClipData item at position " + i + " contains htmlText, textLinks or intent: " + item);
        }
    }

    public static /* synthetic */ void lambda$sanitizeByFiltering$0(String str) {
    }

    public static /* synthetic */ void lambda$sanitizeByThrowing$1(String str) {
        throw new SecurityException(str);
    }

    private void putExtra(Intent intent, String str, Object obj) {
        if (obj == null) {
            intent.getExtras().putString(str, null);
            return;
        }
        if (obj instanceof Parcelable) {
            intent.putExtra(str, (Parcelable) obj);
            return;
        }
        if (obj instanceof Parcelable[]) {
            intent.putExtra(str, (Parcelable[]) obj);
        } else if (obj instanceof Serializable) {
            intent.putExtra(str, (Serializable) obj);
        } else {
            throw new IllegalArgumentException("Unsupported type " + obj.getClass());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void sanitizeClipData(Intent intent, Intent intent2, Predicate<ClipData> predicate, boolean z, Predicate<Uri> predicate2, Consumer<String> consumer) {
        CharSequence charSequence;
        Uri uri;
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return;
        }
        if (predicate != null && predicate.test(clipData)) {
            intent2.setClipData(clipData);
            return;
        }
        ClipData clipData2 = null;
        for (int i = 0; i < clipData.getItemCount(); i++) {
            ClipData.Item itemAt = clipData.getItemAt(i);
            if (Build.VERSION.SDK_INT >= 31) {
                Api31Impl.checkOtherMembers(i, itemAt, consumer);
            } else {
                checkOtherMembers(i, itemAt, consumer);
            }
            if (z) {
                charSequence = itemAt.getText();
            } else {
                if (itemAt.getText() != null) {
                    StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Item text cannot contain value. Item position: ", ". Text: ");
                    m2939xab142723.append((Object) itemAt.getText());
                    consumer.accept(m2939xab142723.toString());
                }
                charSequence = null;
            }
            if (predicate2 == null) {
                if (itemAt.getUri() != null) {
                    StringBuilder m2939xab1427232 = AbstractC0362x4440ab85.m2939xab142723(i, "Item URI is not allowed. Item position: ", ". URI: ");
                    m2939xab1427232.append(itemAt.getUri());
                    consumer.accept(m2939xab1427232.toString());
                }
            } else if (itemAt.getUri() != null && !predicate2.test(itemAt.getUri())) {
                StringBuilder m2939xab1427233 = AbstractC0362x4440ab85.m2939xab142723(i, "Item URI is not allowed. Item position: ", ". URI: ");
                m2939xab1427233.append(itemAt.getUri());
                consumer.accept(m2939xab1427233.toString());
            } else {
                uri = itemAt.getUri();
                if (charSequence == null || uri != null) {
                    if (clipData2 != null) {
                        clipData2 = new ClipData(clipData.getDescription(), new ClipData.Item(charSequence, null, uri));
                    } else {
                        clipData2.addItem(new ClipData.Item(charSequence, null, uri));
                    }
                }
            }
            uri = null;
            if (charSequence == null) {
            }
            if (clipData2 != null) {
            }
        }
        if (clipData2 != null) {
            intent2.setClipData(clipData2);
        }
    }

    public Intent sanitize(Intent intent, Consumer<String> consumer) {
        Intent intent2 = new Intent();
        ComponentName component = intent.getComponent();
        if ((this.mAllowAnyComponent && component == null) || this.mAllowedComponents.test(component)) {
            intent2.setComponent(component);
        } else {
            consumer.accept("Component is not allowed: " + component);
            intent2.setComponent(new ComponentName("android", "java.lang.Void"));
        }
        String str = intent.getPackage();
        if (str != null && !this.mAllowedPackages.test(str)) {
            consumer.accept("Package is not allowed: ".concat(str));
        } else {
            intent2.setPackage(str);
        }
        int flags = this.mAllowedFlags | intent.getFlags();
        int i = this.mAllowedFlags;
        if (flags == i) {
            intent2.setFlags(intent.getFlags());
        } else {
            intent2.setFlags(intent.getFlags() & i);
            consumer.accept("The intent contains flags that are not allowed: 0x" + Integer.toHexString(intent.getFlags() & (~this.mAllowedFlags)));
        }
        String action = intent.getAction();
        if (action != null && !this.mAllowedActions.test(action)) {
            consumer.accept("Action is not allowed: ".concat(action));
        } else {
            intent2.setAction(action);
        }
        Uri data = intent.getData();
        if (data != null && !this.mAllowedData.test(data)) {
            consumer.accept("Data is not allowed: " + data);
        } else {
            intent2.setData(data);
        }
        String type = intent.getType();
        if (type != null && !this.mAllowedTypes.test(type)) {
            consumer.accept("Type is not allowed: ".concat(type));
        } else {
            intent2.setDataAndType(intent2.getData(), type);
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            for (String str2 : categories) {
                if (this.mAllowedCategories.test(str2)) {
                    intent2.addCategory(str2);
                } else {
                    consumer.accept("Category is not allowed: " + str2);
                }
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            for (String str3 : extras.keySet()) {
                if (str3.equals("android.intent.extra.STREAM") && (this.mAllowedFlags & 1) == 0) {
                    consumer.accept("Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag.");
                } else if (str3.equals("output") && ((~this.mAllowedFlags) & 3) != 0) {
                    consumer.accept("Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags.");
                } else {
                    Object obj = extras.get(str3);
                    Predicate<Object> predicate = this.mAllowedExtras.get(str3);
                    if (predicate != null && predicate.test(obj)) {
                        putExtra(intent2, str3, obj);
                    } else {
                        consumer.accept("Extra is not allowed. Key: " + str3 + ". Value: " + obj);
                    }
                }
            }
        }
        sanitizeClipData(intent, intent2, this.mAllowedClipData, this.mAllowClipDataText, this.mAllowedClipDataUri, consumer);
        if (Build.VERSION.SDK_INT >= 29) {
            if (this.mAllowIdentifier) {
                Api29Impl.setIdentifier(intent2, Api29Impl.getIdentifier(intent));
            } else if (Api29Impl.getIdentifier(intent) != null) {
                consumer.accept("Identifier is not allowed: " + Api29Impl.getIdentifier(intent));
            }
        }
        if (this.mAllowSelector) {
            intent2.setSelector(intent.getSelector());
        } else if (intent.getSelector() != null) {
            consumer.accept("Selector is not allowed: " + intent.getSelector());
        }
        if (this.mAllowSourceBounds) {
            intent2.setSourceBounds(intent.getSourceBounds());
        } else if (intent.getSourceBounds() != null) {
            consumer.accept("SourceBounds is not allowed: " + intent.getSourceBounds());
        }
        return intent2;
    }

    public Intent sanitizeByFiltering(Intent intent) {
        return sanitize(intent, new C0674xf27a772(5));
    }

    public Intent sanitizeByThrowing(Intent intent) {
        return sanitize(intent, new C0674xf27a772(4));
    }

    private IntentSanitizer() {
    }
}
