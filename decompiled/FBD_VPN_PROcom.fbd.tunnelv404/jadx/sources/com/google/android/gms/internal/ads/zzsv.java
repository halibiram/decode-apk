package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzsv {
    public final String zza;
    public final String zzb;
    public final String zzc;

    @Nullable
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    private final boolean zzh;

    @VisibleForTesting
    public zzsv(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        str.getClass();
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zzg = z;
        this.zze = z4;
        this.zzf = z6;
        this.zzh = zzcb.zzh(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004f, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{5774484837167882066L, -1870811658172792343L}).toString().equals(r7) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007b, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{-6774565250008030059L, -7506010339797263769L, -416528369726747180L, 985337026442115275L, 8083529745596665890L}).toString().equals(r12) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b1, code lost:
    
        if (r15.isFeatureSupported(new com.panda912.muddy.ObfuscatedString(new long[]{101021910538763096L, 3074517824162226958L, 7250232854055680838L}).toString()) != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzsv zzc(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        boolean z7;
        boolean z8;
        if (codecCapabilities != null) {
            int i = zzfy.zza;
            if (codecCapabilities.isFeatureSupported(new ObfuscatedString(new long[]{-7965440420177583333L, -6116282055567139199L, -2256169595456176656L, -8967676700922222314L}).toString())) {
                if (zzfy.zza <= 22) {
                    String obfuscatedString = new ObfuscatedString(new long[]{-248534136198728710L, -3063965179795187323L, 8688252606224423276L}).toString();
                    String str4 = zzfy.zzd;
                    if (!obfuscatedString.equals(str4)) {
                    }
                    if (!new ObfuscatedString(new long[]{5009939957279400319L, 5709988824776142942L, -553658494769094674L, -1984078997401555447L}).toString().equals(str)) {
                    }
                }
                z6 = true;
                if (codecCapabilities != null) {
                    int i2 = zzfy.zza;
                    if (codecCapabilities.isFeatureSupported(new ObfuscatedString(new long[]{8157525045187569783L, -6308232771829583487L, -927792642407466149L, 5339449767497238204L}).toString())) {
                        z7 = true;
                        if (!z5) {
                            if (codecCapabilities != null) {
                                int i3 = zzfy.zza;
                            }
                            z8 = false;
                            return new zzsv(str, str2, str3, codecCapabilities, z, z2, z3, z6, z7, z8);
                        }
                        z8 = true;
                        return new zzsv(str, str2, str3, codecCapabilities, z, z2, z3, z6, z7, z8);
                    }
                }
                z7 = false;
                if (!z5) {
                }
                z8 = true;
                return new zzsv(str, str2, str3, codecCapabilities, z, z2, z3, z6, z7, z8);
            }
        }
        z6 = false;
        if (codecCapabilities != null) {
        }
        z7 = false;
        if (!z5) {
        }
        z8 = true;
        return new zzsv(str, str2, str3, codecCapabilities, z, z2, z3, z6, z7, z8);
    }

    @RequiresApi(21)
    private static Point zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i3 = zzfy.zza;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    private final void zzj(String str) {
        String str2 = zzfy.zze;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1885353999739424139L, -6777373356368573924L, 1298347566113053678L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{-266669296660009533L, -7597496596233504443L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-1429358132735909117L, -7570510912052832949L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{9160611676460905736L, -3125670635635462582L}).toString());
        sb.append(str2);
        zzff.zzb(new ObfuscatedString(new long[]{-6965112366598790386L, 6147023998788984798L, -1561325053821884957L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3387749788702428032L, -183910428861131488L}), sb));
    }

    @RequiresApi(21)
    private static boolean zzk(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point zzi = zzi(videoCapabilities, i, i2);
        int i3 = zzi.x;
        int i4 = zzi.y;
        if (d != -1.0d && d >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
        }
        return videoCapabilities.isSizeSupported(i3, i4);
    }

    private final boolean zzl(zzam zzamVar, boolean z) {
        int i;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        Pair zza = zztn.zza(zzamVar);
        if (zza != null) {
            int intValue = ((Integer) zza.first).intValue();
            int intValue2 = ((Integer) zza.second).intValue();
            int i2 = 8;
            if (new ObfuscatedString(new long[]{577676883924580891L, 4282844098663578779L, -7568445960035211795L, 6422492259683104869L}).toString().equals(zzamVar.zzm)) {
                if (new ObfuscatedString(new long[]{-8819435807600228208L, 8191379820606166869L, 2205131073943825116L}).toString().equals(this.zzb)) {
                    intValue2 = 0;
                    intValue = 8;
                } else if (new ObfuscatedString(new long[]{3338221769262417099L, 5272242134653872496L, -4987050658633431636L}).toString().equals(this.zzb)) {
                    intValue2 = 0;
                    intValue = 2;
                }
            }
            if (!this.zzh) {
                if (intValue == 42) {
                    intValue = 42;
                }
            }
            MediaCodecInfo.CodecProfileLevel[] zzh = zzh();
            if (zzfy.zza <= 23 && new ObfuscatedString(new long[]{7565806681820699740L, -7644566524770863033L, 5181899681699484830L, 1932660351004221703L}).toString().equals(this.zzb) && zzh.length == 0) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
                if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
                    i = videoCapabilities.getBitrateRange().getUpper().intValue();
                } else {
                    i = 0;
                }
                if (i >= 180000000) {
                    i2 = 1024;
                } else if (i >= 120000000) {
                    i2 = 512;
                } else if (i >= 60000000) {
                    i2 = 256;
                } else if (i >= 30000000) {
                    i2 = 128;
                } else if (i >= 18000000) {
                    i2 = 64;
                } else if (i >= 12000000) {
                    i2 = 32;
                } else if (i >= 7200000) {
                    i2 = 16;
                } else if (i < 3600000) {
                    if (i >= 1800000) {
                        i2 = 4;
                    } else if (i >= 800000) {
                        i2 = 2;
                    } else {
                        i2 = 1;
                    }
                }
                MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                codecProfileLevel.profile = 1;
                codecProfileLevel.level = i2;
                zzh = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : zzh) {
                if (codecProfileLevel2.profile == intValue && (codecProfileLevel2.level >= intValue2 || !z)) {
                    if (new ObfuscatedString(new long[]{1588611154925307029L, 8579068786434456238L, -4591905050528815282L}).toString().equals(this.zzb) && intValue == 2) {
                        String obfuscatedString = new ObfuscatedString(new long[]{260782713896453511L, -948306427124434757L}).toString();
                        String str = zzfy.zzb;
                        if (!obfuscatedString.equals(str) && !new ObfuscatedString(new long[]{7432997818619815154L, -4401090023096553014L}).toString().equals(str)) {
                        }
                    }
                }
            }
            String str2 = zzamVar.zzj;
            String str3 = this.zzc;
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{8107332917834825034L, -1588005183896088256L, -6834749750841979575L, 7664632372372491547L}).toString());
            sb.append(str2);
            zzj(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4618242518223452434L, -4405341013595692470L}), sb, str3));
            return false;
        }
        return true;
    }

    private final boolean zzm(zzam zzamVar) {
        if (!this.zzb.equals(zzamVar.zzm) && !this.zzb.equals(zztn.zzc(zzamVar))) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return this.zza;
    }

    @Nullable
    @RequiresApi(21)
    public final Point zza(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            return zzi(videoCapabilities, i, i2);
        }
        return null;
    }

    public final zzis zzb(zzam zzamVar, zzam zzamVar2) {
        int i;
        int i2;
        if (true != zzfy.zzF(zzamVar.zzm, zzamVar2.zzm)) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.zzh) {
            if (zzamVar.zzu != zzamVar2.zzu) {
                i |= 1024;
            }
            if (!this.zze && (zzamVar.zzr != zzamVar2.zzr || zzamVar.zzs != zzamVar2.zzs)) {
                i |= 512;
            }
            if (!zzfy.zzF(zzamVar.zzy, zzamVar2.zzy)) {
                i |= 2048;
            }
            String str = this.zza;
            if (zzfy.zzd.startsWith(new ObfuscatedString(new long[]{7939050762236539110L, -8957918193817446183L}).toString()) && new ObfuscatedString(new long[]{-1582473405186367883L, -1510561295926428270L, -660655497632355966L, -5985131823855326339L, -8081634924223147941L, 2595018770470677063L}).toString().equals(str) && !zzamVar.zzd(zzamVar2)) {
                i |= 2;
            }
            if (i == 0) {
                String str2 = this.zza;
                if (true != zzamVar.zzd(zzamVar2)) {
                    i2 = 2;
                } else {
                    i2 = 3;
                }
                return new zzis(str2, zzamVar, zzamVar2, i2, 0);
            }
        } else {
            if (zzamVar.zzz != zzamVar2.zzz) {
                i |= 4096;
            }
            if (zzamVar.zzA != zzamVar2.zzA) {
                i |= 8192;
            }
            if (zzamVar.zzB != zzamVar2.zzB) {
                i |= 16384;
            }
            if (i == 0) {
                if (new ObfuscatedString(new long[]{4383060829452001771L, -3611702189516179065L, 8939819020959106354L}).toString().equals(this.zzb)) {
                    Pair zza = zztn.zza(zzamVar);
                    Pair zza2 = zztn.zza(zzamVar2);
                    if (zza != null && zza2 != null) {
                        int intValue = ((Integer) zza.first).intValue();
                        int intValue2 = ((Integer) zza2.first).intValue();
                        if (intValue == 42 && intValue2 == 42) {
                            return new zzis(this.zza, zzamVar, zzamVar2, 3, 0);
                        }
                    }
                }
            }
            if (!zzamVar.zzd(zzamVar2)) {
                i |= 32;
            }
            if (new ObfuscatedString(new long[]{8125831867121159051L, -1839279643656789869L, 2556122036694901719L}).toString().equals(this.zzb)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzis(this.zza, zzamVar, zzamVar2, 1, 0);
            }
        }
        return new zzis(this.zza, zzamVar, zzamVar2, 0, i);
    }

    public final boolean zzd(zzam zzamVar) {
        if (!zzm(zzamVar) || !zzl(zzamVar, false)) {
            return false;
        }
        return true;
    }

    public final boolean zze(zzam zzamVar) {
        int i;
        int i2;
        if (!zzm(zzamVar) || !zzl(zzamVar, true)) {
            return false;
        }
        if (this.zzh) {
            int i3 = zzamVar.zzr;
            if (i3 <= 0 || (i2 = zzamVar.zzs) <= 0) {
                return true;
            }
            int i4 = zzfy.zza;
            return zzg(i3, i2, zzamVar.zzt);
        }
        int i5 = zzfy.zza;
        int i6 = zzamVar.zzA;
        if (i6 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
            if (codecCapabilities == null) {
                zzj(new ObfuscatedString(new long[]{-5896257082223011172L, 6209118731818054140L, -5371625171826895599L}).toString());
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                zzj(new ObfuscatedString(new long[]{7999810697153402222L, 2595006151281262365L, -1568210519298956916L}).toString());
                return false;
            }
            if (!audioCapabilities.isSampleRateSupported(i6)) {
                zzj(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5884965534792736593L, -1970769554287422814L, -2414968048497476655L, -7305548797310741357L}), new StringBuilder(), i6));
                return false;
            }
        }
        int i7 = zzamVar.zzz;
        if (i7 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
            if (codecCapabilities2 == null) {
                zzj(new ObfuscatedString(new long[]{749123946932043480L, 7289521473014858253L, 8835742696836506454L, 50009968731620449L}).toString());
            } else {
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    zzj(new ObfuscatedString(new long[]{-7313360394936366439L, 2398002691228502969L, -5828258110341906211L, 971062645272303787L}).toString());
                } else {
                    String str = this.zza;
                    String str2 = this.zzb;
                    int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                    if (maxInputChannelCount <= 1 && ((zzfy.zza < 26 || maxInputChannelCount <= 0) && !new ObfuscatedString(new long[]{-3849169192364003352L, -4389463274867946042L, -1354059977172827525L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-7296362407635949949L, 2778665407276649441L, -8481404072908650255L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-4044565999218831879L, -5463391213509169083L, -8080576243948211014L}).toString().equals(str2) && !new ObfuscatedString(new long[]{2752041621287919599L, 9042684600963208061L, 1096265781305772347L}).toString().equals(str2) && !new ObfuscatedString(new long[]{4889396619640163290L, -5531767781304882437L, -2349506604289125255L}).toString().equals(str2) && !new ObfuscatedString(new long[]{3139445494827937486L, -719169297651898662L, -8119071366544888952L}).toString().equals(str2) && !new ObfuscatedString(new long[]{1990543018478233106L, -7077955308763290741L, -4036141540057094628L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-6855044436343104394L, 7027201792203884298L, 7519580880138461328L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-381778505639900907L, 819307856133959113L, -8763246047737055084L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-3988528187087591160L, 3680869314898286381L, -8855158553752844137L}).toString().equals(str2) && !new ObfuscatedString(new long[]{2904558650290645435L, 317466370660269372L, 5141845176763298831L}).toString().equals(str2))) {
                        if (new ObfuscatedString(new long[]{2814408386568772080L, -859488196285932770L, 826834464085538048L}).toString().equals(str2)) {
                            i = 6;
                        } else if (new ObfuscatedString(new long[]{-8658600140993154333L, 2711533481099094743L, 7387476557432243016L}).toString().equals(str2)) {
                            i = 16;
                        } else {
                            i = 30;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{5505835605015223435L, -4319888381026810147L, -528076504383001424L, -7693794814592208664L, -735278653655833961L}).toString());
                        sb.append(str);
                        sb.append(new ObfuscatedString(new long[]{-1485196716040068304L, -8604884046725561017L}).toString());
                        sb.append(maxInputChannelCount);
                        sb.append(new ObfuscatedString(new long[]{-4309767552071320279L, 4848616106658530439L}).toString());
                        sb.append(i);
                        zzff.zzf(new ObfuscatedString(new long[]{-1031701504376621833L, 267108467538525922L, -3647887764186042641L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8114968598295669102L, -674166969698231353L}), sb));
                        maxInputChannelCount = i;
                    }
                    if (maxInputChannelCount < i7) {
                        zzj(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2036676495745671923L, 358685599922869100L, 4949153342430352650L, -2241874246228607105L}), new StringBuilder(), i7));
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final boolean zzf(zzam zzamVar) {
        if (this.zzh) {
            return this.zze;
        }
        Pair zza = zztn.zza(zzamVar);
        if (zza != null && ((Integer) zza.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    @RequiresApi(21)
    public final boolean zzg(int i, int i2, double d) {
        boolean z;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            zzj(new ObfuscatedString(new long[]{-4140974443104735538L, 5535536325271028958L, -2926043685970606754L}).toString());
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzj(new ObfuscatedString(new long[]{7796784411505677742L, -5705093567388707223L, -7167717180538646482L, 431616267624298544L}).toString());
            return false;
        }
        if (zzfy.zza >= 29) {
            z = true;
            int zza = zzsu.zza(videoCapabilities, this.zzb, i, i2, d);
            if (zza != 2) {
                if (zza == 1) {
                    zzj(new ObfuscatedString(new long[]{-3371094107523031464L, 1052850654539394887L, 5384285915719037432L, 7657467411086025961L}).toString() + i + new ObfuscatedString(new long[]{-8749814097110455143L, 1398971356363326412L}).toString() + i2 + new ObfuscatedString(new long[]{-7296118162020287158L, 1683192456565683500L}).toString() + d);
                    return false;
                }
            }
            return z;
        }
        z = true;
        if (!zzk(videoCapabilities, i, i2, d)) {
            if (i < i2) {
                if ((!new ObfuscatedString(new long[]{-1994917916212671011L, -3664327664699285789L, 8475306492277485024L, 2926500352855473465L, 409313937889590652L}).toString().equals(this.zza) || !new ObfuscatedString(new long[]{1169952594762513073L, 7111888739696012256L}).toString().equals(zzfy.zzb)) && zzk(videoCapabilities, i2, i, d)) {
                    String str = new ObfuscatedString(new long[]{-4907514229693795980L, -2286929947965283387L, 8596781483779908707L, -2829555928001035056L}).toString() + i + new ObfuscatedString(new long[]{6152807138784668292L, -932947747173360341L}).toString() + i2 + new ObfuscatedString(new long[]{-97139495601653874L, 6174930366762750510L}).toString() + d;
                    String str2 = this.zza;
                    String str3 = this.zzb;
                    String str4 = zzfy.zze;
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{5024282904331214869L, 8174151395626022646L, 4578599196719777780L}).toString());
                    sb.append(str);
                    sb.append(new ObfuscatedString(new long[]{-23442449986307105L, 6724777692322540426L}).toString());
                    sb.append(str2);
                    sb.append(new ObfuscatedString(new long[]{-7536237970240524148L, -5698008887703443506L}).toString());
                    sb.append(str3);
                    sb.append(new ObfuscatedString(new long[]{4584614777878349483L, -2738429234859151102L}).toString());
                    sb.append(str4);
                    zzff.zzb(new ObfuscatedString(new long[]{2668769192355539589L, 2943239679690904720L, 6756201256715577534L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8518518720741393810L, 8631276427682287725L}), sb));
                }
            }
            zzj(new ObfuscatedString(new long[]{1113410964522965948L, 397558912965142738L, -8959264319510330578L, -3734226820395595637L}).toString() + i + new ObfuscatedString(new long[]{-6696569976914550982L, 5873846860284664313L}).toString() + i2 + new ObfuscatedString(new long[]{8174812987746377716L, 5868035080342746437L}).toString() + d);
            return false;
        }
        return z;
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzh() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return codecProfileLevelArr;
    }
}
