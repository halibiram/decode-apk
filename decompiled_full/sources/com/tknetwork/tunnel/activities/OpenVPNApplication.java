package com.tknetwork.tunnel.activities;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RequiresApi;
import androidx.work.Configuration;
import androidx.work.WorkManager;
import com.panda912.muddy.ObfuscatedString;
import com.tencent.mmkv.MMKV;
import com.tknetwork.tunnel.interfaces.OnByteCountListener;
import com.tknetwork.tunnel.securepreferences.SecurePreferences;
import com.tknetwork.tunnel.utils.ExceptionHandlerUtils;
import com.v2ray.ang.handler.SettingsManager;
import config.ConfigUtil;
import es.dmoral.toasty.Toasty;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\b\u0010\f\u001a\u00020\tH\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/tknetwork/tunnel/activities/OpenVPNApplication;", "Landroid/app/Application;", "<init>", "()V", "night_mode", "", "workManagerConfiguration", "Landroidx/work/Configuration;", "attachBaseContext", "", "base", "Landroid/content/Context;", "onCreate", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OpenVPNApplication extends Application {

    /* renamed from: app, reason: collision with root package name */
    @Nullable
    private static OpenVPNApplication f5774app;
    public static OpenVPNApplication application;

    @Nullable
    private static Context context;

    @Nullable
    private static OnByteCountListener mOnByCountListener;

    @Nullable
    private static SharedPreferences privateSharedPreferences;

    @Nullable
    private static final SecurePreferences sharedPreferences = null;

    @Nullable
    private static SharedPreferences splitSharedPreferences;
    private final int night_mode;

    @NotNull
    private final Configuration workManagerConfiguration = new Configuration.Builder().setDefaultProcessName(new ObfuscatedString(new long[]{4397956586207783846L, 335316615798036482L, -5361187873067962587L, 7658610455428271408L}).toString()).build();

    @NotNull
    public static final String PREFS_GENERAL = new ObfuscatedString(new long[]{7272830116610693324L, -9025651145925137791L, 5491380548865158524L}).toString();

    @NotNull
    public static final String PREFS_SPLIT = new ObfuscatedString(new long[]{919249053492664910L, -2475832781684305812L, 7035089974656408365L}).toString();

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'J\u0010\u0010)\u001a\u00020\u00132\u0006\u0010*\u001a\u00020+H\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@BX\u0087\u000e¢\u0006\u000e\n\u0000\u0012\u0004\b\u001a\u0010\u0003\u001a\u0004\b\u001b\u0010\u001cR&\u0010\u001d\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0003\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R\u0010\u0010!\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;", "", "<init>", "()V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "mOnByCountListener", "Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;", "application", "Lcom/tknetwork/tunnel/activities/OpenVPNApplication;", "getApplication", "()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;", "setApplication", "(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V", "PREFS_GENERAL", "", "PREFS_SPLIT", "sharedPreferences", "Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;", "value", "Landroid/content/SharedPreferences;", "privateSharedPreferences", "getPrivateSharedPreferences$annotations", "getPrivateSharedPreferences", "()Landroid/content/SharedPreferences;", "app", "getApp$annotations", "getApp", "setApp", "splitSharedPreferences", "setByteCountListener", "", "OnByCountListener", "updateByteCount", "in", "", "out", "resString", "res_id", "", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getApp$annotations() {
        }

        @JvmStatic
        public static /* synthetic */ void getPrivateSharedPreferences$annotations() {
        }

        @Nullable
        public final OpenVPNApplication getApp() {
            return OpenVPNApplication.f5774app;
        }

        @NotNull
        public final OpenVPNApplication getApplication() {
            OpenVPNApplication openVPNApplication = OpenVPNApplication.application;
            if (openVPNApplication != null) {
                return openVPNApplication;
            }
            new ObfuscatedString(new long[]{-7302600508025726777L, -2060389992424129409L, 3113514279400476989L}).toString();
            return null;
        }

        @Nullable
        public final Context getContext() {
            return OpenVPNApplication.context;
        }

        @Nullable
        public final SharedPreferences getPrivateSharedPreferences() {
            return OpenVPNApplication.privateSharedPreferences;
        }

        @JvmStatic
        @NotNull
        public final String resString(int res_id) {
            Context context = getContext();
            Intrinsics.checkNotNull(context);
            String string = context.getString(res_id);
            Intrinsics.checkNotNullExpressionValue(string, new ObfuscatedString(new long[]{-1220513931862066419L, -5683028173528129765L, -2286641754652756193L}).toString());
            return string;
        }

        public final void setApp(@Nullable OpenVPNApplication openVPNApplication) {
            OpenVPNApplication.f5774app = openVPNApplication;
        }

        public final void setApplication(@NotNull OpenVPNApplication openVPNApplication) {
            Intrinsics.checkNotNullParameter(openVPNApplication, new ObfuscatedString(new long[]{-775601980012708506L, 7942076498413895089L}).toString());
            OpenVPNApplication.application = openVPNApplication;
        }

        public final void setByteCountListener(@Nullable OnByteCountListener OnByCountListener) {
            OpenVPNApplication.mOnByCountListener = OnByCountListener;
        }

        public final void setContext(@Nullable Context context) {
            OpenVPNApplication.context = context;
        }

        public final void updateByteCount(long in, long out) {
            OnByteCountListener onByteCountListener = OpenVPNApplication.mOnByCountListener;
            Intrinsics.checkNotNull(onByteCountListener);
            onByteCountListener.onByteCount(in, out);
        }

        private Companion() {
        }
    }

    @Nullable
    public static final OpenVPNApplication getApp() {
        return INSTANCE.getApp();
    }

    @Nullable
    public static final SharedPreferences getPrivateSharedPreferences() {
        return INSTANCE.getPrivateSharedPreferences();
    }

    @JvmStatic
    @NotNull
    public static final String resString(int i) {
        return INSTANCE.resString(i);
    }

    public static final void setApp(@Nullable OpenVPNApplication openVPNApplication) {
        INSTANCE.setApp(openVPNApplication);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(@Nullable Context base) {
        super.attachBaseContext(base);
        INSTANCE.setApplication(this);
    }

    @Override // android.app.Application
    @RequiresApi(api = 29)
    public void onCreate() {
        super.onCreate();
        Thread.setDefaultUncaughtExceptionHandler(new ExceptionHandlerUtils(this));
        f5774app = this;
        privateSharedPreferences = getSharedPreferences(new ObfuscatedString(new long[]{3831138869558667482L, 2140580677795861414L, 6677802796292413033L}).toString(), 0);
        splitSharedPreferences = getSharedPreferences(new ObfuscatedString(new long[]{5806481084232820726L, 1535295772659867277L, -6978659692333772859L}).toString(), 0);
        ConfigUtil.getInstance(this);
        MMKV.initialize(this);
        WorkManager.INSTANCE.initialize(this, this.workManagerConfiguration);
        SettingsManager.INSTANCE.initRoutingRulesets(this);
        context = getApplicationContext();
        Toasty.Config.getInstance().setGravity(80, 0, 200).apply();
    }
}
