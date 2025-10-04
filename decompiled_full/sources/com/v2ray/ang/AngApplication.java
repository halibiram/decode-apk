package com.v2ray.ang;

import android.content.Context;
import androidx.multidex.MultiDexApplication;
import androidx.work.Configuration;
import androidx.work.WorkManager;
import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.v2ray.ang.handler.SettingsManager;
import es.dmoral.toasty.Toasty;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\n\u001a\u00020\u0005H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/v2ray/ang/AngApplication;", "Landroidx/multidex/MultiDexApplication;", "<init>", "()V", "attachBaseContext", "", "base", "Landroid/content/Context;", "workManagerConfiguration", "Landroidx/work/Configuration;", "onCreate", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AngApplication extends MultiDexApplication {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static AngApplication application;

    @NotNull
    private final Configuration workManagerConfiguration = new Configuration.Builder().setDefaultProcessName(new ObfuscatedString(new long[]{-8375203374068775936L, 6958959087195231181L, -995905157870676932L, -6394115415527393519L}).toString()).build();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/v2ray/ang/AngApplication$Companion;", "", "<init>", "()V", "application", "Lcom/v2ray/ang/AngApplication;", "getApplication", "()Lcom/v2ray/ang/AngApplication;", "setApplication", "(Lcom/v2ray/ang/AngApplication;)V", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AngApplication getApplication() {
            AngApplication angApplication = AngApplication.application;
            if (angApplication != null) {
                return angApplication;
            }
            new ObfuscatedString(new long[]{-1715781022905523263L, 3129651007881399174L, 1585047550765345285L}).toString();
            return null;
        }

        public final void setApplication(@NotNull AngApplication angApplication) {
            Intrinsics.checkNotNullParameter(angApplication, new ObfuscatedString(new long[]{-7767373063917781123L, 9030024723322813727L}).toString());
            AngApplication.application = angApplication;
        }

        private Companion() {
        }
    }

    @Override // androidx.multidex.MultiDexApplication, android.content.ContextWrapper
    public void attachBaseContext(@Nullable Context base) {
        super.attachBaseContext(base);
        INSTANCE.setApplication(this);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        MMKV.initialize(this);
        SettingsManager settingsManager = SettingsManager.INSTANCE;
        settingsManager.setNightMode();
        WorkManager.INSTANCE.initialize(this, this.workManagerConfiguration);
        settingsManager.initRoutingRulesets(this);
        Toasty.Config.getInstance().setGravity(80, 0, 200).apply();
    }
}
