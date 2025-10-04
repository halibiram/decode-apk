package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class ProviderInstaller {

    @NonNull
    public static final String PROVIDER_NAME = new ObfuscatedString(new long[]{-1004761147371155326L, -1993856577421820009L, 4006526551462272268L}).toString();
    private static final GoogleApiAvailabilityLight zza = GoogleApiAvailabilityLight.getInstance();
    private static final Object zzb = new Object();

    @GuardedBy("ProviderInstaller.lock")
    private static Method zzc = null;

    @GuardedBy("ProviderInstaller.lock")
    private static Method zzd = null;

    /* loaded from: classes2.dex */
    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, @Nullable Intent intent);

        void onProviderInstalled();
    }

    public static void installIfNeeded(@NonNull Context context) {
        Context context2;
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{9012847240862320401L, -2196218769934049604L, 126651955595621208L, -5960505932596859478L}).toString());
        zza.verifyGooglePlayServicesIsAvailable(context, 11925000);
        synchronized (zzb) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                context2 = DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING, new ObfuscatedString(new long[]{-850829415850133209L, -5057977812701702514L, -412527536493552237L, -2191882236173203903L, -5375241068472203302L, 417781639348582971L, -3822882134069585249L, -7396134768411931969L}).toString()).getModuleContext();
            } catch (DynamiteModule.LoadingException e) {
                new ObfuscatedString(new long[]{4342485776641233548L, 3547515238710051066L, -2083520955149070314L, -2054159319645403993L}).toString();
                new ObfuscatedString(new long[]{552884294682261045L, 5472478532901585437L, -9110838333989848028L, 8783930441496512706L, 4638735794225489290L, -1957758888855263215L, -5292777094659067126L}).toString().concat(String.valueOf(e.getMessage()));
                context2 = null;
            }
            if (context2 != null) {
                zzc(context2, context, new ObfuscatedString(new long[]{2830129409394192247L, 6655292695261666654L, -6312927485782280835L, -7195097218531052551L, -917720440266805218L, 1146916573017762383L, 2713772652656739514L, 6406677119641678271L, -3339081497323008120L}).toString());
                return;
            }
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    if (zzd == null) {
                        String obfuscatedString = new ObfuscatedString(new long[]{-371008988928227153L, 7351509302522653263L, 4122840026193976317L, 929131160147671849L, -2188573379583360990L, -1958760278918330436L, -1040735622711154685L, -3125975344476228702L, 1525729076372456867L}).toString();
                        String obfuscatedString2 = new ObfuscatedString(new long[]{-4045851143991132905L, 8030334991531504601L, -1596822683132975903L, 2631387613264144301L}).toString();
                        Class cls = Long.TYPE;
                        zzd = zzb(remoteContext, obfuscatedString, obfuscatedString2, new Class[]{Context.class, cls, cls});
                    }
                    zzd.invoke(null, context, Long.valueOf(elapsedRealtime), Long.valueOf(elapsedRealtime2));
                } catch (Exception e2) {
                    new ObfuscatedString(new long[]{2365999807994915089L, -8840671599274906072L, 321708176664104172L, -4901644938229998380L}).toString();
                    new ObfuscatedString(new long[]{-7627265059994793002L, -8669884998550543367L, 5720472515115703968L, 4357658915254009550L, 2379180736465448662L}).toString().concat(String.valueOf(e2.getMessage()));
                }
            }
            if (remoteContext != null) {
                zzc(remoteContext, context, new ObfuscatedString(new long[]{6485031081796121208L, 9140699152228553447L, -1792099709617762755L, -2951672826776272707L, 2195547159638175224L, -3884047753630029687L, -6164356798580690063L, 624260537477195206L, -1360714184938474197L}).toString());
            } else {
                new ObfuscatedString(new long[]{-2190326118080614285L, -711340276076356969L, -3933152348816346165L, -1528305631059946282L}).toString();
                new ObfuscatedString(new long[]{159081504386749458L, 8949638165549171361L, 8949505353892003504L, -6738547328432787652L, 8129499042882058359L}).toString();
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(@NonNull Context context, @NonNull ProviderInstallListener providerInstallListener) {
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-7554535422652796850L, -5132328510764735155L, 8245410578747148136L, 7482217084616949255L}).toString());
        Preconditions.checkNotNull(providerInstallListener, new ObfuscatedString(new long[]{7023037115079139886L, 5011194060813071038L, -4174822721661486245L, -152626965475796234L, -564918029649897787L}).toString());
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-2550481565935799804L, -8535607872998494591L, -8068505094456787012L, -7745080337226885207L, 239636151150841777L}).toString());
        new zza(context, providerInstallListener).execute(new Void[0]);
    }

    private static Method zzb(Context context, String str, String str2, Class[] clsArr) {
        return context.getClassLoader().loadClass(str).getMethod(str2, clsArr);
    }

    @GuardedBy("ProviderInstaller.lock")
    private static void zzc(Context context, Context context2, String str) {
        String message;
        try {
            if (zzc == null) {
                zzc = zzb(context, str, new ObfuscatedString(new long[]{-395722742178648736L, 8100807711059792216L, 4078555705471505115L}).toString(), new Class[]{Context.class});
            }
            zzc.invoke(null, context);
        } catch (Exception e) {
            String obfuscatedString = new ObfuscatedString(new long[]{-6785634917265006951L, -406158707547383493L, 7093361076199987336L, -3877883719357223880L}).toString();
            Throwable cause = e.getCause();
            if (Log.isLoggable(obfuscatedString, 6)) {
                if (cause == null) {
                    message = e.getMessage();
                } else {
                    message = cause.getMessage();
                }
                String obfuscatedString2 = new ObfuscatedString(new long[]{-9046245235410042801L, -532857181571419785L, -8445655075096972183L, -7180172310735431019L, -7498094609713226408L}).toString();
                String valueOf = String.valueOf(message);
                new ObfuscatedString(new long[]{-6963097218428757692L, -8670077189340328451L, 6951505218697284513L, 4460077880648320326L}).toString();
                obfuscatedString2.concat(valueOf);
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
