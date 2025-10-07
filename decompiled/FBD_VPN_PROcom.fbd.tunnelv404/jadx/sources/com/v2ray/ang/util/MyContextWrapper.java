package com.v2ray.ang.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0847x8aff552a;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/v2ray/ang/util/MyContextWrapper;", "Landroid/content/ContextWrapper;", "base", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class MyContextWrapper extends ContextWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007¨\u0006\n"}, d2 = {"Lcom/v2ray/ang/util/MyContextWrapper$Companion;", "", "<init>", "()V", "wrap", "Landroid/content/ContextWrapper;", "context", "Landroid/content/Context;", "newLocale", "Ljava/util/Locale;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RequiresApi(24)
        @NotNull
        public final ContextWrapper wrap(@NotNull Context context, @Nullable Locale newLocale) {
            Context createConfigurationContext;
            Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-5576588498462078997L, 2168415701272181679L}).toString());
            Resources resources = context.getResources();
            Intrinsics.checkNotNullExpressionValue(resources, new ObfuscatedString(new long[]{8778284041657547912L, -5681628478594816377L, -1277184480538625298L, -1851984985038997740L}).toString());
            Configuration configuration = resources.getConfiguration();
            Intrinsics.checkNotNullExpressionValue(configuration, new ObfuscatedString(new long[]{8213426851932660660L, 6693351591306109216L, -5458639779895734042L, -6997501275205658044L}).toString());
            if (Build.VERSION.SDK_INT >= 24) {
                configuration.setLocale(newLocale);
                AbstractC0847x8aff552a.m3373xc20437a5();
                LocaleList m3362x95f25580 = AbstractC0847x8aff552a.m3362x95f25580(new Locale[]{newLocale});
                LocaleList.setDefault(m3362x95f25580);
                configuration.setLocales(m3362x95f25580);
                createConfigurationContext = context.createConfigurationContext(configuration);
            } else {
                configuration.setLocale(newLocale);
                createConfigurationContext = context.createConfigurationContext(configuration);
            }
            Intrinsics.checkNotNull(createConfigurationContext);
            return new ContextWrapper(createConfigurationContext);
        }

        private Companion() {
        }
    }

    public MyContextWrapper(@Nullable Context context) {
        super(context);
    }
}
