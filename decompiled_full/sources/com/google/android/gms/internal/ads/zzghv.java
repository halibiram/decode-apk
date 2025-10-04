package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzghv {

    @Nullable
    private Integer zza;

    @Nullable
    private Integer zzb;

    @Nullable
    private Integer zzc;

    @Nullable
    private Integer zzd;
    private zzghw zze;
    private zzghx zzf;

    public /* synthetic */ zzghv(zzghu zzghuVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzf = zzghx.zzc;
    }

    public final zzghv zza(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{-2110544151924646309L, 7390894586755723658L, 1264452409016232115L, -6751593190118941604L, -245595147119991172L, -6313184451124397826L, 3289504063373067169L, 1104338141396836829L, -5314886877671196058L, -5865075091327534005L, 5419836457230272132L}).toString(), Integer.valueOf(i)));
        }
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzghv zzb(zzghw zzghwVar) {
        this.zze = zzghwVar;
        return this;
    }

    public final zzghv zzc(int i) {
        if (i >= 16) {
            this.zzb = Integer.valueOf(i);
            return this;
        }
        throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{3798217657276985809L, -2750716412619621504L, 6339226724298166198L, -4098643686328096605L, 1018976591846847227L, 3562554260917625485L, 5111313664815466925L, 7492998888012593253L, -2319127595408049722L}).toString(), Integer.valueOf(i)));
    }

    public final zzghv zzd(int i) {
        if (i >= 12 && i <= 16) {
            this.zzc = Integer.valueOf(i);
            return this;
        }
        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{7018219131278606474L, 2214198630617507272L, -4559868930709770972L, 3660684707404698685L, -2345375484774353290L, 407209569465053244L, -8482290162589099500L, -6344437853181951449L, -189104077172738658L, -6711865287884259576L}).toString(), Integer.valueOf(i)));
    }

    public final zzghv zze(int i) {
        if (i >= 10) {
            this.zzd = Integer.valueOf(i);
            return this;
        }
        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{630048613328743965L, -4055159194545875895L, 7163711855658175725L, -8997771444180013524L, -8199599682261431841L, 1436066509653948929L, -8911064240437144526L, -6173366122051218767L}).toString(), Integer.valueOf(i)));
    }

    public final zzghv zzf(zzghx zzghxVar) {
        this.zzf = zzghxVar;
        return this;
    }

    public final zzghz zzg() {
        if (this.zza != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    Integer num = this.zzd;
                    if (num != null) {
                        if (this.zze != null) {
                            if (this.zzf != null) {
                                int intValue = num.intValue();
                                zzghw zzghwVar = this.zze;
                                if (zzghwVar == zzghw.zza) {
                                    if (intValue > 20) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{5475924353531899116L, -114678096246998163L, 9024224832153043676L, -4453459266527237394L, -5545754482131701285L, -8108482056475422414L, 1118176668783495675L, 3551041207390331981L, -7302971242034638081L}).toString(), num));
                                    }
                                } else if (zzghwVar == zzghw.zzb) {
                                    if (intValue > 28) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-2221995346478291132L, -5048663362558620782L, -7522098547555581502L, -3334349780048083111L, -541618224663443193L, 4431405423139948943L, 130082974832488977L, 8870677728624426888L, 3338509953756055025L}).toString(), num));
                                    }
                                } else if (zzghwVar == zzghw.zzc) {
                                    if (intValue > 32) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{8203500307813443391L, 5708447543623123812L, -8172459615825283786L, -6140990167751174891L, 7258510415739964057L, -8515121170188930085L, 1354216305061827944L, -4562304781572544657L, 6040063163511397114L}).toString(), num));
                                    }
                                } else if (zzghwVar == zzghw.zzd) {
                                    if (intValue > 48) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-7255231329600448162L, -2076224531763117792L, 8756076383442797586L, 5319749042648897324L, 2979719968100521203L, 1305622433772883315L, 8528606221461845864L, -6650690122484542517L, -4097746160947574421L}).toString(), num));
                                    }
                                } else if (zzghwVar == zzghw.zze) {
                                    if (intValue > 64) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-4995514441200648293L, -9088833118475441799L, 8252398165439874667L, -8627042544281982609L, -7890522643691120339L, -1965942455241793123L, -4012560044330814808L, -8825054694454125750L, 806701619618703292L}).toString(), num));
                                    }
                                } else {
                                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{8105191214281207877L, -7133908119878717739L, -3392665425174803240L, -522086109488877180L, 1275487921014884660L, 24974786222538294L, 5564563505790454993L, 7696542296543045005L, -5404369073666136041L, 8282945544880008837L}).toString());
                                }
                                return new zzghz(this.zza.intValue(), this.zzb.intValue(), this.zzc.intValue(), this.zzd.intValue(), this.zzf, this.zze, null);
                            }
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1135938266721211592L, 2999980036854580532L, 8019058027398808346L, -3607675355325056369L}).toString());
                        }
                        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-962423290216676118L, -152215940425428331L, -4858984880925996024L, -6559335087002149189L}).toString());
                    }
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6813965963479423556L, -5144445167437044423L, 1241176488252796499L, 2108744874977060329L}).toString());
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{1505070360838307784L, -136201873213162380L, -1702385740423388906L, -6218020170218602384L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7674247715308936665L, -2297624030604439429L, -6105453314510457087L, 58446812695367507L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7756578302299988620L, -555871674343181274L, -7103019743277741600L, -7322599062185331648L}).toString());
    }

    private zzghv() {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        throw null;
    }
}
