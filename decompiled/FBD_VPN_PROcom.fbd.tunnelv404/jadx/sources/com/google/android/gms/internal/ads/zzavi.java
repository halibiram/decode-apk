package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzavi {
    private static final String[] zza = {new ObfuscatedString(new long[]{879024315347190876L, -629130146179389262L}).toString(), new ObfuscatedString(new long[]{-7712747127274543839L, -6988755037907451615L, -4765421709481876449L}).toString(), new ObfuscatedString(new long[]{6290733426559678009L, 8821229007491976625L}).toString()};
    private final String zzb = new ObfuscatedString(new long[]{-5240797536322181646L, 2671517371792581021L, -8457148886739660318L, 3924933506610281105L}).toString();
    private final String[] zzc = {new ObfuscatedString(new long[]{-5218535640293722768L, 3234035315824741032L, -44131949956176031L}).toString(), new ObfuscatedString(new long[]{-6325291089219089203L, 1652965625631520213L, 3145781016308968324L, 713047274601206558L}).toString(), new ObfuscatedString(new long[]{7066881852357011731L, 7449425912906619897L, -9078298986372744884L, -4604640166951890009L}).toString()};
    private final zzave zzd;

    @Deprecated
    public zzavi(zzave zzaveVar) {
        this.zzd = zzaveVar;
    }

    private final Uri zzg(Uri uri, String str) {
        try {
            if (uri != null) {
                try {
                    if (uri.getHost().equals(this.zzb)) {
                        if (uri.getPath().contains(new ObfuscatedString(new long[]{-2298156641527514044L, -7879128873319186185L}).toString())) {
                            if (!uri.toString().contains(new ObfuscatedString(new long[]{-6933883810198468063L, -9118893844427100596L}).toString())) {
                                String obfuscatedString = new ObfuscatedString(new long[]{-3685500398402372689L, 909746736184552554L}).toString();
                                String uri2 = uri.toString();
                                int indexOf = uri2.indexOf(new ObfuscatedString(new long[]{-7498331206143779369L, -2095702619240314318L}).toString());
                                if (indexOf != -1) {
                                    int i = indexOf + 1;
                                    return Uri.parse(uri2.substring(0, i) + obfuscatedString + new ObfuscatedString(new long[]{3619816168919754937L, -221283672868009960L}).toString() + str + new ObfuscatedString(new long[]{-5910646088321907829L, 7237577140442907654L}).toString() + uri2.substring(i));
                                }
                                String encodedPath = uri.getEncodedPath();
                                int indexOf2 = uri2.indexOf(encodedPath);
                                return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + new ObfuscatedString(new long[]{-4619422733656662066L, -8279941363858286285L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{1156019110789458784L, -8810422652949969090L}).toString() + str + new ObfuscatedString(new long[]{2850887601644641398L, -643736132581166026L}).toString() + uri2.substring(indexOf2 + encodedPath.length()));
                            }
                            throw new zzavj(new ObfuscatedString(new long[]{-6111794422211702252L, -3135264408933543287L, -1854974952428104694L, 7569405859819443885L, -757042762038620497L}).toString());
                        }
                    }
                } catch (NullPointerException unused) {
                }
                if (uri.getQueryParameter(new ObfuscatedString(new long[]{-8202488713886454489L, -7934853187133099645L}).toString()) == null) {
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-437871063256683777L, -8219565867956724555L}).toString();
                    String uri3 = uri.toString();
                    int indexOf3 = uri3.indexOf(new ObfuscatedString(new long[]{2778998314192654208L, -5454627889149935276L}).toString());
                    if (indexOf3 == -1) {
                        indexOf3 = uri3.indexOf(new ObfuscatedString(new long[]{-7967387065563977618L, -2964408498669931517L}).toString());
                    }
                    if (indexOf3 != -1) {
                        int i2 = indexOf3 + 1;
                        return Uri.parse(uri3.substring(0, i2) + obfuscatedString2 + new ObfuscatedString(new long[]{2325243910880198899L, -6345153564123566368L}).toString() + str + new ObfuscatedString(new long[]{2268186334079551051L, 4379267049430296490L}).toString() + uri3.substring(i2));
                    }
                    return uri.buildUpon().appendQueryParameter(obfuscatedString2, str).build();
                }
                throw new zzavj(new ObfuscatedString(new long[]{4377970956905215314L, 2907418480739492640L, -9002454065539932445L, -4392521066478073621L, -8060056115733841718L, -3829534302979474801L}).toString());
            }
            throw null;
        } catch (UnsupportedOperationException unused2) {
            throw new zzavj(new ObfuscatedString(new long[]{-2233361045314593972L, 2134126178396301185L, -7309544985612168440L, -1295575050438360015L, 7571057291920548816L, -5675923813494908363L}).toString());
        }
    }

    @Deprecated
    public final Uri zza(Uri uri, Context context, View view, Activity activity) {
        try {
            return zzg(uri, this.zzd.zzf(context, uri.getQueryParameter(new ObfuscatedString(new long[]{-9109271402282275756L, 770177315681523483L}).toString()), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzavj(new ObfuscatedString(new long[]{2275596196472277020L, 3213702015727979234L, 3432237920785548600L, -3931980011331759355L, -1036828345688266969L, -4623582634595975854L}).toString());
        }
    }

    @Deprecated
    public final Uri zzb(Uri uri, Context context) {
        return zzg(uri, this.zzd.zzg(context));
    }

    @Deprecated
    public final zzave zzc() {
        return this.zzd;
    }

    @Deprecated
    public final void zzd(MotionEvent motionEvent) {
        this.zzd.zzk(motionEvent);
    }

    public final boolean zze(Uri uri) {
        if (zzf(uri)) {
            String[] strArr = zza;
            for (int i = 0; i < 3; i++) {
                if (uri.getPath().endsWith(strArr[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean zzf(Uri uri) {
        uri.getClass();
        try {
            String host = uri.getHost();
            String[] strArr = this.zzc;
            for (int i = 0; i < 3; i++) {
                if (host.endsWith(strArr[i])) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }
}
