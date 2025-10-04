package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzahx {
    public byte[] zzN;
    public zzaeb zzT;
    public boolean zzU;
    public zzaea zzW;
    public int zzX;
    private int zzY;
    public String zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public boolean zzg;
    public byte[] zzh;
    public zzadz zzi;
    public byte[] zzj;
    public zzae zzk;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = -1;
    public int zzo = -1;
    public int zzp = -1;
    public int zzq = 0;
    public int zzr = -1;
    public float zzs = 0.0f;
    public float zzt = 0.0f;
    public float zzu = 0.0f;
    public byte[] zzv = null;
    public int zzw = -1;
    public boolean zzx = false;
    public int zzy = -1;
    public int zzz = -1;
    public int zzA = -1;
    public int zzB = 1000;
    public int zzC = 200;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public float zzG = -1.0f;
    public float zzH = -1.0f;
    public float zzI = -1.0f;
    public float zzJ = -1.0f;
    public float zzK = -1.0f;
    public float zzL = -1.0f;
    public float zzM = -1.0f;
    public int zzO = 1;
    public int zzP = -1;
    public int zzQ = 8000;
    public long zzR = 0;
    public long zzS = 0;
    public boolean zzV = true;
    private String zzZ = new ObfuscatedString(new long[]{8191308525534688866L, -6308327732830280481L}).toString();

    private static Pair zzf(zzfp zzfpVar) {
        try {
            zzfpVar.zzL(16);
            long zzs = zzfpVar.zzs();
            if (zzs == 1482049860) {
                return new Pair(new ObfuscatedString(new long[]{4791658407689711211L, 5931512031004673446L, 6719264090541437848L}).toString(), null);
            }
            if (zzs == 859189832) {
                return new Pair(new ObfuscatedString(new long[]{-422804863053494669L, 7267213725627459723L, 1916814285768146797L}).toString(), null);
            }
            if (zzs == 826496599) {
                int zzd = zzfpVar.zzd() + 20;
                byte[] zzM = zzfpVar.zzM();
                while (true) {
                    int length = zzM.length;
                    if (zzd < length - 4) {
                        int i = zzd + 1;
                        if (zzM[zzd] == 0 && zzM[i] == 0 && zzM[zzd + 2] == 1 && zzM[zzd + 3] == 15) {
                            return new Pair(new ObfuscatedString(new long[]{-8290303294370192841L, -963984948683938147L, -2953554383904223427L}).toString(), Collections.singletonList(Arrays.copyOfRange(zzM, zzd, length)));
                        }
                        zzd = i;
                    } else {
                        throw zzcc.zza(new ObfuscatedString(new long[]{6423492019158257875L, 1283204748717395136L, 3522719049444704498L, 1436136283866765283L, 5385916436694964529L, -5588556473298528336L, 319050898329735308L}).toString(), null);
                    }
                }
            } else {
                zzff.zzf(new ObfuscatedString(new long[]{1706274731692432542L, 774041920962509332L, 4927852793398034520L, 7819226241589311065L}).toString(), new ObfuscatedString(new long[]{-3268204046034728820L, 6912390420353897286L, 2513341242693930059L, -5127461240667472546L, 7673240809562767262L, 8624292827745819625L, 6397880354395661129L, 4469314542933487919L}).toString());
                return new Pair(new ObfuscatedString(new long[]{5683316572977007169L, 1218897759658434087L, 1804543657283196059L}).toString(), null);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzcc.zza(new ObfuscatedString(new long[]{6309327686084028186L, -7643600065327641491L, 7378709689674171337L, 4844603011890252453L, -8666664404006193456L, 3358965285032865909L}).toString(), null);
        }
    }

    private static List zzg(byte[] bArr) {
        int i;
        int i2;
        try {
            if (bArr[0] == 2) {
                int i3 = 1;
                int i4 = 0;
                while (true) {
                    int i5 = bArr[i3];
                    i3++;
                    i = i5 & 255;
                    if (i != 255) {
                        break;
                    }
                    i4 += 255;
                }
                int i6 = i4 + i;
                int i7 = 0;
                while (true) {
                    int i8 = bArr[i3];
                    i3++;
                    i2 = i8 & 255;
                    if (i2 != 255) {
                        break;
                    }
                    i7 += 255;
                }
                int i9 = i7 + i2;
                if (bArr[i3] == 1) {
                    byte[] bArr2 = new byte[i6];
                    System.arraycopy(bArr, i3, bArr2, 0, i6);
                    int i10 = i3 + i6;
                    if (bArr[i10] == 3) {
                        int i11 = i10 + i9;
                        if (bArr[i11] == 5) {
                            int length = bArr.length - i11;
                            byte[] bArr3 = new byte[length];
                            System.arraycopy(bArr, i11, bArr3, 0, length);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw zzcc.zza(new ObfuscatedString(new long[]{-5590477935913848807L, -9074197932075119567L, -8901182198970974108L, 3942120063758690386L, -2451577834189104849L, -3826149893416048550L}).toString(), null);
                    }
                    throw zzcc.zza(new ObfuscatedString(new long[]{-8108586458120154899L, -6257782663328684334L, -452699227844830100L, -4664493909708827470L, 7446786001209376510L, -5882843625640452685L}).toString(), null);
                }
                throw zzcc.zza(new ObfuscatedString(new long[]{-1801616329822794554L, -6078500486642992925L, -1394573627145430043L, -506851069181243080L, -5298454609580843020L, -5718938578743419706L}).toString(), null);
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{-7451101858346156051L, -197253396655863483L, -4196957348763953823L, -4292301658595353782L, 35301174857255442L, 6667142365238505212L}).toString(), null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzcc.zza(new ObfuscatedString(new long[]{3554604890223753864L, -7579037364838012535L, -7283541719944031919L, 815057013997396714L, 842905001369178056L, -4914489342759221958L}).toString(), null);
        }
    }

    private static boolean zzh(zzfp zzfpVar) {
        UUID uuid;
        UUID uuid2;
        try {
            int zzk = zzfpVar.zzk();
            if (zzk == 1) {
                return true;
            }
            if (zzk == 65534) {
                zzfpVar.zzK(24);
                long zzt = zzfpVar.zzt();
                uuid = zzahy.zzf;
                if (zzt == uuid.getMostSignificantBits()) {
                    long zzt2 = zzfpVar.zzt();
                    uuid2 = zzahy.zzf;
                    if (zzt2 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzcc.zza(new ObfuscatedString(new long[]{4741945574712608032L, 5296430180456265214L, -7138527162583143550L, -3280549500614479153L, -4755227379629099112L, 9101055952810757991L}).toString(), null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    private final byte[] zzi(String str) {
        byte[] bArr = this.zzj;
        if (bArr != null) {
            return bArr;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{-5174762894913186953L, 7786473054161730976L, -5471746239966853280L, -6783248995888410490L, -5312229699946424995L}).toString().concat(String.valueOf(str)), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0337. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0795  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x076f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x07a2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x09f1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x07b2  */
    @EnsuresNonNull({"this.output"})
    @RequiresNonNull({"codecId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zze(zzacx zzacxVar, int i) {
        char c;
        String obfuscatedString;
        ObfuscatedString obfuscatedString2;
        String obfuscatedString3;
        List list;
        String str;
        String obfuscatedString4;
        String str2;
        int i2;
        String str3;
        ObfuscatedString obfuscatedString5;
        int i3;
        ObfuscatedString obfuscatedString6;
        int zzk;
        String obfuscatedString7;
        ObfuscatedString obfuscatedString8;
        byte[] bArr;
        int i4;
        Map map;
        Map map2;
        int i5;
        Map map3;
        zzacq zza;
        List list2;
        List list3;
        String str4 = this.zzb;
        int i6 = 2;
        int i7 = 0;
        switch (str4.hashCode()) {
            case -2095576542:
                if (str4.equals(new ObfuscatedString(new long[]{6395461622621405655L, 5654050461090187754L, -7918988300996918859L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str4.equals(new ObfuscatedString(new long[]{-329239971641325439L, -7204147731830303577L, 8427084545620944871L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str4.equals(new ObfuscatedString(new long[]{7516547918559900313L, -2073463489928503181L}).toString())) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str4.equals(new ObfuscatedString(new long[]{-8955259907599909145L, -7453784932380242999L}).toString())) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str4.equals(new ObfuscatedString(new long[]{-5926455730420916972L, 8722554384096743370L}).toString())) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str4.equals(new ObfuscatedString(new long[]{-786602674520525519L, -456193598570531282L, -6267647982007439025L}).toString())) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str4.equals(new ObfuscatedString(new long[]{1025746513139700628L, -3078993500464601018L, 2282325926702619238L}).toString())) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str4.equals(new ObfuscatedString(new long[]{-3542636606034820142L, -8122982951337817481L, -4269317467861021233L}).toString())) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str4.equals(new ObfuscatedString(new long[]{5552215749023607686L, -3899042999693972579L}).toString())) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str4.equals(new ObfuscatedString(new long[]{8695432129180369675L, 6441902412666712831L, -1821224046165209031L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str4.equals(new ObfuscatedString(new long[]{1317047328072680486L, 7041813969526879895L, 3814596716520105502L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str4.equals(new ObfuscatedString(new long[]{-1454641412678454717L, -6844358557456433431L}).toString())) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str4.equals(new ObfuscatedString(new long[]{-2576140464565970408L, -4962267731269770882L, 8899177286103536006L}).toString())) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str4.equals(new ObfuscatedString(new long[]{93582710795762144L, 2449102409383665990L}).toString())) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str4.equals(new ObfuscatedString(new long[]{-322967423089247039L, 8703000934207619517L}).toString())) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str4.equals(new ObfuscatedString(new long[]{1497067407754526299L, -7329495600425796677L}).toString())) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 82318131:
                if (str4.equals(new ObfuscatedString(new long[]{343460006696730L, -2729743925896977978L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str4.equals(new ObfuscatedString(new long[]{-7820306907766365114L, -2069524276452499785L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str4.equals(new ObfuscatedString(new long[]{-441195304895967605L, -8485931879468970141L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str4.equals(new ObfuscatedString(new long[]{-4071120702840395738L, -5626775434702881682L, -7209086997822098013L}).toString())) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str4.equals(new ObfuscatedString(new long[]{5051065040411519724L, -2078579869820995655L}).toString())) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str4.equals(new ObfuscatedString(new long[]{1460758112443373880L, -628131720514910735L, -341310205641079157L}).toString())) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 635596514:
                if (str4.equals(new ObfuscatedString(new long[]{1138331478685336337L, 4854398293008295074L, 6372668127274924468L}).toString())) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 725948237:
                if (str4.equals(new ObfuscatedString(new long[]{2348731958681805378L, 6752090837626595283L, -5739978865661911591L}).toString())) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str4.equals(new ObfuscatedString(new long[]{-5983453307370416043L, 7634133200868341460L, -9115423113820329461L}).toString())) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 738597099:
                if (str4.equals(new ObfuscatedString(new long[]{-6232044220333825119L, 2506375101606291284L, -6306934956301547853L}).toString())) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str4.equals(new ObfuscatedString(new long[]{2547519395053237547L, 8707028085992486724L, 7897962228853781624L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1045209816:
                if (str4.equals(new ObfuscatedString(new long[]{3264448947826263273L, -3806193352387868201L, 8674114594408329182L}).toString())) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str4.equals(new ObfuscatedString(new long[]{6446928797487103593L, 3536299206851692903L, 1382469555703738708L}).toString())) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str4.equals(new ObfuscatedString(new long[]{-2117501226624143503L, 6016046821227626338L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str4.equals(new ObfuscatedString(new long[]{-3542099986890566935L, 6188254555791781829L}).toString())) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str4.equals(new ObfuscatedString(new long[]{-7758163353224087669L, -4925841385393046510L}).toString())) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str4.equals(new ObfuscatedString(new long[]{-2749932257268834153L, -4490237370412634096L}).toString())) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String obfuscatedString9 = new ObfuscatedString(new long[]{-5746328973380022251L, -1738315727401029853L, -2180780860276618190L, -9111899194695004254L, 6600938662473675605L, 318154817113688074L}).toString();
        zzt zztVar = null;
        r12 = null;
        r12 = null;
        r12 = null;
        r12 = null;
        r12 = null;
        r12 = null;
        r12 = null;
        r12 = null;
        r12 = null;
        byte[] bArr2 = null;
        switch (c) {
            case 0:
                obfuscatedString = new ObfuscatedString(new long[]{920529663860699302L, 8160409640443041773L, 3890194987464693698L, 7970771524540765278L}).toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null && (zza = zzacq.zza(new zzfp(this.zzN))) != null) {
                    str3 = zza.zza;
                    str2 = new ObfuscatedString(new long[]{467197532949787227L, -6171190412291578902L, -5753981892128130877L, 8965874376403257607L}).toString();
                }
                int i8 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar = new zzak();
                if (zzcb.zzg(str2)) {
                    zzakVar.zzy(this.zzO);
                    zzakVar.zzX(this.zzQ);
                    zzakVar.zzQ(i3);
                    i6 = 1;
                } else if (zzcb.zzh(str2)) {
                    if (this.zzq == 0) {
                        int i9 = this.zzo;
                        i4 = -1;
                        if (i9 == -1) {
                            i9 = this.zzl;
                        }
                        this.zzo = i9;
                        int i10 = this.zzp;
                        if (i10 == -1) {
                            i10 = this.zzm;
                        }
                        this.zzp = i10;
                    } else {
                        i4 = -1;
                    }
                    float f = (this.zzo == i4 || (i5 = this.zzp) == i4) ? -1.0f : (this.zzm * r1) / (this.zzl * i5);
                    if (this.zzx) {
                        if (this.zzD != -1.0f && this.zzE != -1.0f && this.zzF != -1.0f && this.zzG != -1.0f && this.zzH != -1.0f && this.zzI != -1.0f && this.zzJ != -1.0f && this.zzK != -1.0f && this.zzL != -1.0f && this.zzM != -1.0f) {
                            bArr2 = new byte[25];
                            ByteBuffer order = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
                            order.put((byte) 0);
                            order.putShort((short) ((this.zzD * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzE * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzF * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzG * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzH * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzI * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzJ * 50000.0f) + 0.5f));
                            order.putShort((short) ((this.zzK * 50000.0f) + 0.5f));
                            order.putShort((short) (this.zzL + 0.5f));
                            order.putShort((short) (this.zzM + 0.5f));
                            order.putShort((short) this.zzB);
                            order.putShort((short) this.zzC);
                        }
                        zzr zzrVar = new zzr();
                        zzrVar.zzc(this.zzy);
                        zzrVar.zzb(this.zzA);
                        zzrVar.zzd(this.zzz);
                        zzrVar.zze(bArr2);
                        zzrVar.zzf(this.zzn);
                        zzrVar.zza(this.zzn);
                        zztVar = zzrVar.zzg();
                    }
                    if (this.zza != null) {
                        map = zzahy.zzg;
                        if (map.containsKey(this.zza)) {
                            map2 = zzahy.zzg;
                            i4 = ((Integer) map2.get(this.zza)).intValue();
                        }
                    }
                    if (this.zzr == 0 && Float.compare(this.zzs, 0.0f) == 0 && Float.compare(this.zzt, 0.0f) == 0) {
                        if (Float.compare(this.zzu, 0.0f) != 0) {
                            if (Float.compare(this.zzu, 90.0f) == 0) {
                                i7 = 90;
                            } else {
                                i7 = 180;
                                if (Float.compare(this.zzu, -180.0f) != 0 && Float.compare(this.zzu, 180.0f) != 0) {
                                    if (Float.compare(this.zzu, -90.0f) == 0) {
                                        i7 = 270;
                                    }
                                }
                            }
                        }
                        zzakVar.zzab(this.zzl);
                        zzakVar.zzI(this.zzm);
                        zzakVar.zzS(f);
                        zzakVar.zzV(i7);
                        zzakVar.zzT(this.zzv);
                        zzakVar.zzZ(this.zzw);
                        zzakVar.zzA(zztVar);
                    }
                    i7 = i4;
                    zzakVar.zzab(this.zzl);
                    zzakVar.zzI(this.zzm);
                    zzakVar.zzS(f);
                    zzakVar.zzV(i7);
                    zzakVar.zzT(this.zzv);
                    zzakVar.zzZ(this.zzw);
                    zzakVar.zzA(zztVar);
                } else {
                    if (!new ObfuscatedString(new long[]{5080398128863617772L, 9079777394705247253L, 2528480007254322735L, -7979462549157747086L}).toString().equals(str2) && !new ObfuscatedString(new long[]{191976546639299578L, 7335508128524070757L, -1974949001452586867L}).toString().equals(str2) && !new ObfuscatedString(new long[]{4188814735035844655L, -6510541862956686326L}).toString().equals(str2) && !new ObfuscatedString(new long[]{2652599143809296355L, 5979346937761835211L, -8324654394037676814L, 7187538955097450833L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-7756768702817705577L, 5946160709409907251L, 7423727333118316668L}).toString().equals(str2) && !new ObfuscatedString(new long[]{-8590678062624061671L, -6313939028695470234L, 3135842474877165427L, 7741124652502581169L}).toString().equals(str2)) {
                        throw zzcc.zza(new ObfuscatedString(new long[]{1937014335648079342L, 2550606838069901582L, -864091946773862133L, -230263776473087967L}).toString(), null);
                    }
                    i6 = 3;
                }
                if (this.zza != null) {
                    map3 = zzahy.zzg;
                    if (!map3.containsKey(this.zza)) {
                        zzakVar.zzM(this.zza);
                    }
                }
                zzakVar.zzJ(i);
                zzakVar.zzW(str2);
                zzakVar.zzO(i2);
                zzakVar.zzN(this.zzZ);
                zzakVar.zzY(i8);
                zzakVar.zzL(list);
                zzakVar.zzz(str3);
                zzakVar.zzE(this.zzk);
                zzam zzac = zzakVar.zzac();
                zzaea zzw = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw;
                zzw.zzl(zzac);
                return;
            case 1:
                obfuscatedString2 = new ObfuscatedString(new long[]{-6143361905100362824L, 3949983122239578079L, -444039655325148083L, 7511750592900952586L});
                obfuscatedString = obfuscatedString2.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                    str3 = zza.zza;
                    str2 = new ObfuscatedString(new long[]{467197532949787227L, -6171190412291578902L, -5753981892128130877L, 8965874376403257607L}).toString();
                    break;
                }
                int i82 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2.zzJ(i);
                zzakVar2.zzW(str2);
                zzakVar2.zzO(i2);
                zzakVar2.zzN(this.zzZ);
                zzakVar2.zzY(i82);
                zzakVar2.zzL(list);
                zzakVar2.zzz(str3);
                zzakVar2.zzE(this.zzk);
                zzam zzac2 = zzakVar2.zzac();
                zzaea zzw2 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2;
                zzw2.zzl(zzac2);
                return;
            case 2:
                obfuscatedString2 = new ObfuscatedString(new long[]{-1721600372933221661L, 4090323156764442051L, -5267691844187285920L});
                obfuscatedString = obfuscatedString2.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22.zzJ(i);
                zzakVar22.zzW(str2);
                zzakVar22.zzO(i2);
                zzakVar22.zzN(this.zzZ);
                zzakVar22.zzY(i822);
                zzakVar22.zzL(list);
                zzakVar22.zzz(str3);
                zzakVar22.zzE(this.zzk);
                zzam zzac22 = zzakVar22.zzac();
                zzaea zzw22 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22;
                zzw22.zzl(zzac22);
                return;
            case 3:
                obfuscatedString2 = new ObfuscatedString(new long[]{119373514731244651L, -719632244198654530L, 9068264256546652716L});
                obfuscatedString = obfuscatedString2.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i8222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222.zzJ(i);
                zzakVar222.zzW(str2);
                zzakVar222.zzO(i2);
                zzakVar222.zzN(this.zzZ);
                zzakVar222.zzY(i8222);
                zzakVar222.zzL(list);
                zzakVar222.zzz(str3);
                zzakVar222.zzE(this.zzk);
                zzam zzac222 = zzakVar222.zzac();
                zzaea zzw222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222;
                zzw222.zzl(zzac222);
                return;
            case 4:
            case 5:
            case 6:
                byte[] bArr3 = this.zzj;
                List singletonList = bArr3 == null ? null : Collections.singletonList(bArr3);
                obfuscatedString3 = new ObfuscatedString(new long[]{5126314576049198644L, -5560345304478625668L, -7284939643928402010L}).toString();
                list3 = singletonList;
                str2 = obfuscatedString3;
                str3 = null;
                i2 = -1;
                list2 = list3;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i82222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222.zzJ(i);
                zzakVar2222.zzW(str2);
                zzakVar2222.zzO(i2);
                zzakVar2222.zzN(this.zzZ);
                zzakVar2222.zzY(i82222);
                zzakVar2222.zzL(list);
                zzakVar2222.zzz(str3);
                zzakVar2222.zzE(this.zzk);
                zzam zzac2222 = zzakVar2222.zzac();
                zzaea zzw2222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222;
                zzw2222.zzl(zzac2222);
                return;
            case 7:
                zzabz zza2 = zzabz.zza(new zzfp(zzi(this.zzb)));
                list = zza2.zza;
                this.zzX = zza2.zzb;
                str = zza2.zzk;
                obfuscatedString4 = new ObfuscatedString(new long[]{5638689449208880837L, 8771753422468634281L, -7533822243273061586L}).toString();
                str2 = obfuscatedString4;
                i2 = -1;
                str3 = str;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i822222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222.zzJ(i);
                zzakVar22222.zzW(str2);
                zzakVar22222.zzO(i2);
                zzakVar22222.zzN(this.zzZ);
                zzakVar22222.zzY(i822222);
                zzakVar22222.zzL(list);
                zzakVar22222.zzz(str3);
                zzakVar22222.zzE(this.zzk);
                zzam zzac22222 = zzakVar22222.zzac();
                zzaea zzw22222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222;
                zzw22222.zzl(zzac22222);
                return;
            case '\b':
                zzadl zza3 = zzadl.zza(new zzfp(zzi(this.zzb)));
                list = zza3.zza;
                this.zzX = zza3.zzb;
                str = zza3.zzi;
                obfuscatedString4 = new ObfuscatedString(new long[]{-8415811167662393514L, 792467711262051736L, 2630526994683726696L}).toString();
                str2 = obfuscatedString4;
                i2 = -1;
                str3 = str;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i8222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222.zzJ(i);
                zzakVar222222.zzW(str2);
                zzakVar222222.zzO(i2);
                zzakVar222222.zzN(this.zzZ);
                zzakVar222222.zzY(i8222222);
                zzakVar222222.zzL(list);
                zzakVar222222.zzz(str3);
                zzakVar222222.zzE(this.zzk);
                zzam zzac222222 = zzakVar222222.zzac();
                zzaea zzw222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222;
                zzw222222.zzl(zzac222222);
                return;
            case '\t':
                Pair zzf = zzf(new zzfp(zzi(this.zzb)));
                obfuscatedString3 = (String) zzf.first;
                list3 = (List) zzf.second;
                str2 = obfuscatedString3;
                str3 = null;
                i2 = -1;
                list2 = list3;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i82222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222.zzJ(i);
                zzakVar2222222.zzW(str2);
                zzakVar2222222.zzO(i2);
                zzakVar2222222.zzN(this.zzZ);
                zzakVar2222222.zzY(i82222222);
                zzakVar2222222.zzL(list);
                zzakVar2222222.zzz(str3);
                zzakVar2222222.zzE(this.zzk);
                zzam zzac2222222 = zzakVar2222222.zzac();
                zzaea zzw2222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222;
                zzw2222222.zzl(zzac2222222);
                return;
            case '\n':
                obfuscatedString = new ObfuscatedString(new long[]{-1735394840247484104L, 7695687842150596357L, -1433533525980266030L}).toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222.zzJ(i);
                zzakVar22222222.zzW(str2);
                zzakVar22222222.zzO(i2);
                zzakVar22222222.zzN(this.zzZ);
                zzakVar22222222.zzY(i822222222);
                zzakVar22222222.zzL(list);
                zzakVar22222222.zzz(str3);
                zzakVar22222222.zzE(this.zzk);
                zzam zzac22222222 = zzakVar22222222.zzac();
                zzaea zzw22222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222;
                zzw22222222.zzl(zzac22222222);
                return;
            case 11:
                List zzg = zzg(zzi(str4));
                str2 = new ObfuscatedString(new long[]{-4356283035557121147L, 5373561274103284159L, 6042010637886295167L}).toString();
                str3 = null;
                i2 = 8192;
                list2 = zzg;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i8222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222.zzJ(i);
                zzakVar222222222.zzW(str2);
                zzakVar222222222.zzO(i2);
                zzakVar222222222.zzN(this.zzZ);
                zzakVar222222222.zzY(i8222222222);
                zzakVar222222222.zzL(list);
                zzakVar222222222.zzz(str3);
                zzakVar222222222.zzE(this.zzk);
                zzam zzac222222222 = zzakVar222222222.zzac();
                zzaea zzw222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222;
                zzw222222222.zzl(zzac222222222);
                return;
            case '\f':
                ArrayList arrayList = new ArrayList(3);
                arrayList.add(zzi(this.zzb));
                ByteBuffer allocate = ByteBuffer.allocate(8);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                arrayList.add(allocate.order(byteOrder).putLong(this.zzR).array());
                arrayList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.zzS).array());
                str2 = new ObfuscatedString(new long[]{1118112392886839811L, -2592794694328227341L, 4706623091851274796L}).toString();
                str3 = null;
                i2 = 5760;
                list2 = arrayList;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i82222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222.zzJ(i);
                zzakVar2222222222.zzW(str2);
                zzakVar2222222222.zzO(i2);
                zzakVar2222222222.zzN(this.zzZ);
                zzakVar2222222222.zzY(i82222222222);
                zzakVar2222222222.zzL(list);
                zzakVar2222222222.zzz(str3);
                zzakVar2222222222.zzE(this.zzk);
                zzam zzac2222222222 = zzakVar2222222222.zzac();
                zzaea zzw2222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222;
                zzw2222222222.zzl(zzac2222222222);
                return;
            case '\r':
                List singletonList2 = Collections.singletonList(zzi(str4));
                zzabr zza4 = zzabs.zza(this.zzj);
                this.zzQ = zza4.zza;
                this.zzO = zza4.zzb;
                String str5 = zza4.zzc;
                str2 = new ObfuscatedString(new long[]{447827899306798782L, -6657700350527175676L, 7802903339035602783L}).toString();
                i2 = -1;
                str3 = str5;
                list2 = singletonList2;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i822222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222.zzJ(i);
                zzakVar22222222222.zzW(str2);
                zzakVar22222222222.zzO(i2);
                zzakVar22222222222.zzN(this.zzZ);
                zzakVar22222222222.zzY(i822222222222);
                zzakVar22222222222.zzL(list);
                zzakVar22222222222.zzz(str3);
                zzakVar22222222222.zzE(this.zzk);
                zzam zzac22222222222 = zzakVar22222222222.zzac();
                zzaea zzw22222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222;
                zzw22222222222.zzl(zzac22222222222);
                return;
            case 14:
                obfuscatedString5 = new ObfuscatedString(new long[]{-2212506664969982894L, 9044087705553735316L, -2211086504204675101L});
                str2 = obfuscatedString5.toString();
                list = null;
                str3 = null;
                i3 = -1;
                i2 = 4096;
                if (this.zzN != null) {
                }
                int i8222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222222.zzJ(i);
                zzakVar222222222222.zzW(str2);
                zzakVar222222222222.zzO(i2);
                zzakVar222222222222.zzN(this.zzZ);
                zzakVar222222222222.zzY(i8222222222222);
                zzakVar222222222222.zzL(list);
                zzakVar222222222222.zzz(str3);
                zzakVar222222222222.zzE(this.zzk);
                zzam zzac222222222222 = zzakVar222222222222.zzac();
                zzaea zzw222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222;
                zzw222222222222.zzl(zzac222222222222);
                return;
            case 15:
                obfuscatedString5 = new ObfuscatedString(new long[]{-2487511501873582049L, 1937623380475219929L, -1870422563303784542L});
                str2 = obfuscatedString5.toString();
                list = null;
                str3 = null;
                i3 = -1;
                i2 = 4096;
                if (this.zzN != null) {
                }
                int i82222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222222.zzJ(i);
                zzakVar2222222222222.zzW(str2);
                zzakVar2222222222222.zzO(i2);
                zzakVar2222222222222.zzN(this.zzZ);
                zzakVar2222222222222.zzY(i82222222222222);
                zzakVar2222222222222.zzL(list);
                zzakVar2222222222222.zzz(str3);
                zzakVar2222222222222.zzE(this.zzk);
                zzam zzac2222222222222 = zzakVar2222222222222.zzac();
                zzaea zzw2222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222;
                zzw2222222222222.zzl(zzac2222222222222);
                return;
            case 16:
                obfuscatedString6 = new ObfuscatedString(new long[]{586739620730619378L, 2836335181087041502L, 6717461847147876441L});
                obfuscatedString = obfuscatedString6.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222222.zzJ(i);
                zzakVar22222222222222.zzW(str2);
                zzakVar22222222222222.zzO(i2);
                zzakVar22222222222222.zzN(this.zzZ);
                zzakVar22222222222222.zzY(i822222222222222);
                zzakVar22222222222222.zzL(list);
                zzakVar22222222222222.zzz(str3);
                zzakVar22222222222222.zzE(this.zzk);
                zzam zzac22222222222222 = zzakVar22222222222222.zzac();
                zzaea zzw22222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222;
                zzw22222222222222.zzl(zzac22222222222222);
                return;
            case 17:
                obfuscatedString6 = new ObfuscatedString(new long[]{1623354496637918443L, -1490836594165419092L, 3808419829835247829L});
                obfuscatedString = obfuscatedString6.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i8222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222222222.zzJ(i);
                zzakVar222222222222222.zzW(str2);
                zzakVar222222222222222.zzO(i2);
                zzakVar222222222222222.zzN(this.zzZ);
                zzakVar222222222222222.zzY(i8222222222222222);
                zzakVar222222222222222.zzL(list);
                zzakVar222222222222222.zzz(str3);
                zzakVar222222222222222.zzE(this.zzk);
                zzam zzac222222222222222 = zzakVar222222222222222.zzac();
                zzaea zzw222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222;
                zzw222222222222222.zzl(zzac222222222222222);
                return;
            case 18:
                this.zzT = new zzaeb();
                obfuscatedString6 = new ObfuscatedString(new long[]{-6021927321033584476L, 3252185168578760727L, -4764482735728928398L});
                obfuscatedString = obfuscatedString6.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i82222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222222222.zzJ(i);
                zzakVar2222222222222222.zzW(str2);
                zzakVar2222222222222222.zzO(i2);
                zzakVar2222222222222222.zzN(this.zzZ);
                zzakVar2222222222222222.zzY(i82222222222222222);
                zzakVar2222222222222222.zzL(list);
                zzakVar2222222222222222.zzz(str3);
                zzakVar2222222222222222.zzE(this.zzk);
                zzam zzac2222222222222222 = zzakVar2222222222222222.zzac();
                zzaea zzw2222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222;
                zzw2222222222222222.zzl(zzac2222222222222222);
                return;
            case 19:
            case 20:
                obfuscatedString6 = new ObfuscatedString(new long[]{3283314677421023970L, 8815538567755752237L, -9142679077300134289L});
                obfuscatedString = obfuscatedString6.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222222222.zzJ(i);
                zzakVar22222222222222222.zzW(str2);
                zzakVar22222222222222222.zzO(i2);
                zzakVar22222222222222222.zzN(this.zzZ);
                zzakVar22222222222222222.zzY(i822222222222222222);
                zzakVar22222222222222222.zzL(list);
                zzakVar22222222222222222.zzz(str3);
                zzakVar22222222222222222.zzE(this.zzk);
                zzam zzac22222222222222222 = zzakVar22222222222222222.zzac();
                zzaea zzw22222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222;
                zzw22222222222222222.zzl(zzac22222222222222222);
                return;
            case 21:
                obfuscatedString6 = new ObfuscatedString(new long[]{1951201314837434601L, -1652776965166801440L, 8472953541242046065L});
                obfuscatedString = obfuscatedString6.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i8222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222222222222.zzJ(i);
                zzakVar222222222222222222.zzW(str2);
                zzakVar222222222222222222.zzO(i2);
                zzakVar222222222222222222.zzN(this.zzZ);
                zzakVar222222222222222222.zzY(i8222222222222222222);
                zzakVar222222222222222222.zzL(list);
                zzakVar222222222222222222.zzz(str3);
                zzakVar222222222222222222.zzE(this.zzk);
                zzam zzac222222222222222222 = zzakVar222222222222222222.zzac();
                zzaea zzw222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222;
                zzw222222222222222222.zzl(zzac222222222222222222);
                return;
            case 22:
                List singletonList3 = Collections.singletonList(zzi(str4));
                obfuscatedString3 = new ObfuscatedString(new long[]{4585164041580072805L, -5051504371629148762L, 2540801708197812562L}).toString();
                list3 = singletonList3;
                str2 = obfuscatedString3;
                str3 = null;
                i2 = -1;
                list2 = list3;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i82222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222222222222.zzJ(i);
                zzakVar2222222222222222222.zzW(str2);
                zzakVar2222222222222222222.zzO(i2);
                zzakVar2222222222222222222.zzN(this.zzZ);
                zzakVar2222222222222222222.zzY(i82222222222222222222);
                zzakVar2222222222222222222.zzL(list);
                zzakVar2222222222222222222.zzz(str3);
                zzakVar2222222222222222222.zzE(this.zzk);
                zzam zzac2222222222222222222 = zzakVar2222222222222222222.zzac();
                zzaea zzw2222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222;
                zzw2222222222222222222.zzl(zzac2222222222222222222);
                return;
            case 23:
                if (zzh(new zzfp(zzi(this.zzb)))) {
                    zzk = zzfy.zzk(this.zzP);
                    if (zzk == 0) {
                        zzff.zzf(new ObfuscatedString(new long[]{-3710788678250819004L, -9002449648483998591L, 7311986156103386821L, 6303580225301358935L}).toString(), new ObfuscatedString(new long[]{7664097225465388821L, -4911878923499625674L, -7554394436918030009L, -8695360906816454074L, 2320177774955179002L}).toString() + this.zzP + obfuscatedString9);
                        obfuscatedString = new ObfuscatedString(new long[]{-9046726344769131219L, -7205166403314794350L, 8206832012207353572L}).toString();
                    } else {
                        obfuscatedString7 = new ObfuscatedString(new long[]{2263717201666755707L, -2520962436943514704L, -1874905744255667627L}).toString();
                        str2 = obfuscatedString7;
                        i3 = zzk;
                        list = null;
                        str3 = null;
                        i2 = -1;
                        if (this.zzN != null) {
                        }
                        int i822222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                        zzak zzakVar22222222222222222222 = new zzak();
                        if (zzcb.zzg(str2)) {
                        }
                        if (this.zza != null) {
                        }
                        zzakVar22222222222222222222.zzJ(i);
                        zzakVar22222222222222222222.zzW(str2);
                        zzakVar22222222222222222222.zzO(i2);
                        zzakVar22222222222222222222.zzN(this.zzZ);
                        zzakVar22222222222222222222.zzY(i822222222222222222222);
                        zzakVar22222222222222222222.zzL(list);
                        zzakVar22222222222222222222.zzz(str3);
                        zzakVar22222222222222222222.zzE(this.zzk);
                        zzam zzac22222222222222222222 = zzakVar22222222222222222222.zzac();
                        zzaea zzw22222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                        this.zzW = zzw22222222222222222222;
                        zzw22222222222222222222.zzl(zzac22222222222222222222);
                        return;
                    }
                } else {
                    zzff.zzf(new ObfuscatedString(new long[]{-4202974870167839534L, 3459322122209961626L, 3993266054414314332L, 6924959648783321927L}).toString(), new ObfuscatedString(new long[]{9102394161053758249L, -7649515657451621929L, -9017391720523070891L, 5192640324720918237L, -2372009474078662101L, -704981840687083061L, -7073996712269578011L, 4210991812142204557L, 2924981354273194608L, -5265717606724873372L}).toString());
                    obfuscatedString = new ObfuscatedString(new long[]{2057011169431581340L, -442618242807081204L, -5053835706114351336L}).toString();
                }
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i8222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222222222222222.zzJ(i);
                zzakVar222222222222222222222.zzW(str2);
                zzakVar222222222222222222222.zzO(i2);
                zzakVar222222222222222222222.zzN(this.zzZ);
                zzakVar222222222222222222222.zzY(i8222222222222222222222);
                zzakVar222222222222222222222.zzL(list);
                zzakVar222222222222222222222.zzz(str3);
                zzakVar222222222222222222222.zzE(this.zzk);
                zzam zzac222222222222222222222 = zzakVar222222222222222222222.zzac();
                zzaea zzw222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222;
                zzw222222222222222222222.zzl(zzac222222222222222222222);
                return;
            case 24:
                zzk = zzfy.zzk(this.zzP);
                if (zzk == 0) {
                    zzff.zzf(new ObfuscatedString(new long[]{-2585347614990454297L, 7343871228109752169L, -1634437058011648009L, -2972621976149685085L}).toString(), new ObfuscatedString(new long[]{6634896652516787118L, -1151533525236550497L, -6058060214499278404L, -2048908687652191659L, -4587836389624593162L, 9034637384931356994L, 6951619370528915730L}).toString() + this.zzP + obfuscatedString9);
                    obfuscatedString = new ObfuscatedString(new long[]{-6754957841478347200L, 4522588888969543651L, 9208462306382205536L}).toString();
                    str2 = obfuscatedString;
                    list = null;
                    str3 = null;
                    i3 = -1;
                    i2 = -1;
                    if (this.zzN != null) {
                    }
                    int i82222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                    zzak zzakVar2222222222222222222222 = new zzak();
                    if (zzcb.zzg(str2)) {
                    }
                    if (this.zza != null) {
                    }
                    zzakVar2222222222222222222222.zzJ(i);
                    zzakVar2222222222222222222222.zzW(str2);
                    zzakVar2222222222222222222222.zzO(i2);
                    zzakVar2222222222222222222222.zzN(this.zzZ);
                    zzakVar2222222222222222222222.zzY(i82222222222222222222222);
                    zzakVar2222222222222222222222.zzL(list);
                    zzakVar2222222222222222222222.zzz(str3);
                    zzakVar2222222222222222222222.zzE(this.zzk);
                    zzam zzac2222222222222222222222 = zzakVar2222222222222222222222.zzac();
                    zzaea zzw2222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                    this.zzW = zzw2222222222222222222222;
                    zzw2222222222222222222222.zzl(zzac2222222222222222222222);
                    return;
                }
                obfuscatedString7 = new ObfuscatedString(new long[]{308294321865301191L, -793855861338568183L, 8251011927362233716L}).toString();
                str2 = obfuscatedString7;
                i3 = zzk;
                list = null;
                str3 = null;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222222222222222.zzJ(i);
                zzakVar22222222222222222222222.zzW(str2);
                zzakVar22222222222222222222222.zzO(i2);
                zzakVar22222222222222222222222.zzN(this.zzZ);
                zzakVar22222222222222222222222.zzY(i822222222222222222222222);
                zzakVar22222222222222222222222.zzL(list);
                zzakVar22222222222222222222222.zzz(str3);
                zzakVar22222222222222222222222.zzE(this.zzk);
                zzam zzac22222222222222222222222 = zzakVar22222222222222222222222.zzac();
                zzaea zzw22222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222;
                zzw22222222222222222222222.zzl(zzac22222222222222222222222);
                return;
            case 25:
                int i11 = this.zzP;
                str2 = new ObfuscatedString(new long[]{-3560429596208628430L, 8994749055742415948L, 7421656604425563134L}).toString();
                if (i11 == 8) {
                    list = null;
                    str3 = null;
                    i3 = 3;
                    i2 = -1;
                    if (this.zzN != null) {
                    }
                    int i8222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                    zzak zzakVar222222222222222222222222 = new zzak();
                    if (zzcb.zzg(str2)) {
                    }
                    if (this.zza != null) {
                    }
                    zzakVar222222222222222222222222.zzJ(i);
                    zzakVar222222222222222222222222.zzW(str2);
                    zzakVar222222222222222222222222.zzO(i2);
                    zzakVar222222222222222222222222.zzN(this.zzZ);
                    zzakVar222222222222222222222222.zzY(i8222222222222222222222222);
                    zzakVar222222222222222222222222.zzL(list);
                    zzakVar222222222222222222222222.zzz(str3);
                    zzakVar222222222222222222222222.zzE(this.zzk);
                    zzam zzac222222222222222222222222 = zzakVar222222222222222222222222.zzac();
                    zzaea zzw222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                    this.zzW = zzw222222222222222222222222;
                    zzw222222222222222222222222.zzl(zzac222222222222222222222222);
                    return;
                }
                if (i11 == 16) {
                    i3 = 268435456;
                } else if (i11 == 24) {
                    i3 = 1342177280;
                } else {
                    if (i11 != 32) {
                        zzff.zzf(new ObfuscatedString(new long[]{-741217125763723738L, -4584703894540037462L, 6853020194510103232L, 3302832664106210787L}).toString(), new ObfuscatedString(new long[]{-4167589550034408394L, 7189660879117978317L, 9146084329779010598L, 270320073421688796L, -854669475036743340L, 8883633173190173858L}).toString() + i11 + obfuscatedString9);
                        obfuscatedString = new ObfuscatedString(new long[]{-5662079006872868208L, -3457467264297734821L, 2093496309854840704L}).toString();
                        str2 = obfuscatedString;
                        list = null;
                        str3 = null;
                        i3 = -1;
                        i2 = -1;
                        if (this.zzN != null) {
                        }
                        int i82222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                        zzak zzakVar2222222222222222222222222 = new zzak();
                        if (zzcb.zzg(str2)) {
                        }
                        if (this.zza != null) {
                        }
                        zzakVar2222222222222222222222222.zzJ(i);
                        zzakVar2222222222222222222222222.zzW(str2);
                        zzakVar2222222222222222222222222.zzO(i2);
                        zzakVar2222222222222222222222222.zzN(this.zzZ);
                        zzakVar2222222222222222222222222.zzY(i82222222222222222222222222);
                        zzakVar2222222222222222222222222.zzL(list);
                        zzakVar2222222222222222222222222.zzz(str3);
                        zzakVar2222222222222222222222222.zzE(this.zzk);
                        zzam zzac2222222222222222222222222 = zzakVar2222222222222222222222222.zzac();
                        zzaea zzw2222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                        this.zzW = zzw2222222222222222222222222;
                        zzw2222222222222222222222222.zzl(zzac2222222222222222222222222);
                        return;
                    }
                    i3 = 1610612736;
                }
                list = null;
                str3 = null;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222222222222222222.zzJ(i);
                zzakVar22222222222222222222222222.zzW(str2);
                zzakVar22222222222222222222222222.zzO(i2);
                zzakVar22222222222222222222222222.zzN(this.zzZ);
                zzakVar22222222222222222222222222.zzY(i822222222222222222222222222);
                zzakVar22222222222222222222222222.zzL(list);
                zzakVar22222222222222222222222222.zzz(str3);
                zzakVar22222222222222222222222222.zzE(this.zzk);
                zzam zzac22222222222222222222222222 = zzakVar22222222222222222222222222.zzac();
                zzaea zzw22222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222222;
                zzw22222222222222222222222222.zzl(zzac22222222222222222222222222);
                return;
            case 26:
                int i12 = this.zzP;
                if (i12 != 32) {
                    zzff.zzf(new ObfuscatedString(new long[]{-212878377173911741L, -3761231872248041642L, 1669938591082968132L, -4735686981084620540L}).toString(), new ObfuscatedString(new long[]{-562278459200376524L, 6394167023682119520L, 8385238163726232973L, 764995794883941483L, 1041756849674526566L, 4716149706193771694L, -434702705719794418L}).toString() + i12 + obfuscatedString9);
                    obfuscatedString = new ObfuscatedString(new long[]{5785812712550030695L, 8679753456456047906L, 622875256860234757L}).toString();
                    str2 = obfuscatedString;
                    list = null;
                    str3 = null;
                    i3 = -1;
                    i2 = -1;
                    if (this.zzN != null) {
                    }
                    int i8222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                    zzak zzakVar222222222222222222222222222 = new zzak();
                    if (zzcb.zzg(str2)) {
                    }
                    if (this.zza != null) {
                    }
                    zzakVar222222222222222222222222222.zzJ(i);
                    zzakVar222222222222222222222222222.zzW(str2);
                    zzakVar222222222222222222222222222.zzO(i2);
                    zzakVar222222222222222222222222222.zzN(this.zzZ);
                    zzakVar222222222222222222222222222.zzY(i8222222222222222222222222222);
                    zzakVar222222222222222222222222222.zzL(list);
                    zzakVar222222222222222222222222222.zzz(str3);
                    zzakVar222222222222222222222222222.zzE(this.zzk);
                    zzam zzac222222222222222222222222222 = zzakVar222222222222222222222222222.zzac();
                    zzaea zzw222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                    this.zzW = zzw222222222222222222222222222;
                    zzw222222222222222222222222222.zzl(zzac222222222222222222222222222);
                    return;
                }
                str2 = new ObfuscatedString(new long[]{3038542170793882925L, 8066596541165742747L, 6616295723148771678L}).toString();
                list = null;
                str3 = null;
                i3 = 4;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i82222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222222222222222222222.zzJ(i);
                zzakVar2222222222222222222222222222.zzW(str2);
                zzakVar2222222222222222222222222222.zzO(i2);
                zzakVar2222222222222222222222222222.zzN(this.zzZ);
                zzakVar2222222222222222222222222222.zzY(i82222222222222222222222222222);
                zzakVar2222222222222222222222222222.zzL(list);
                zzakVar2222222222222222222222222222.zzz(str3);
                zzakVar2222222222222222222222222222.zzE(this.zzk);
                zzam zzac2222222222222222222222222222 = zzakVar2222222222222222222222222222.zzac();
                zzaea zzw2222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222222222222;
                zzw2222222222222222222222222222.zzl(zzac2222222222222222222222222222);
                return;
            case 27:
                obfuscatedString8 = new ObfuscatedString(new long[]{-1573669669248288790L, 7277357284043401676L, -3323064315408878632L, -8844825623731161282L});
                obfuscatedString = obfuscatedString8.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i822222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222222222222222222222.zzJ(i);
                zzakVar22222222222222222222222222222.zzW(str2);
                zzakVar22222222222222222222222222222.zzO(i2);
                zzakVar22222222222222222222222222222.zzN(this.zzZ);
                zzakVar22222222222222222222222222222.zzY(i822222222222222222222222222222);
                zzakVar22222222222222222222222222222.zzL(list);
                zzakVar22222222222222222222222222222.zzz(str3);
                zzakVar22222222222222222222222222222.zzE(this.zzk);
                zzam zzac22222222222222222222222222222 = zzakVar22222222222222222222222222222.zzac();
                zzaea zzw22222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222222222;
                zzw22222222222222222222222222222.zzl(zzac22222222222222222222222222222);
                return;
            case 28:
                bArr = zzahy.zzc;
                zzgaa zzn = zzgaa.zzn(bArr, zzi(this.zzb));
                obfuscatedString3 = new ObfuscatedString(new long[]{5493582968548231013L, -6067223308029169192L, -7603961839647902274L}).toString();
                list3 = zzn;
                str2 = obfuscatedString3;
                str3 = null;
                i2 = -1;
                list2 = list3;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i8222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222222222222222222222222.zzJ(i);
                zzakVar222222222222222222222222222222.zzW(str2);
                zzakVar222222222222222222222222222222.zzO(i2);
                zzakVar222222222222222222222222222222.zzN(this.zzZ);
                zzakVar222222222222222222222222222222.zzY(i8222222222222222222222222222222);
                zzakVar222222222222222222222222222222.zzL(list);
                zzakVar222222222222222222222222222222.zzz(str3);
                zzakVar222222222222222222222222222222.zzE(this.zzk);
                zzam zzac222222222222222222222222222222 = zzakVar222222222222222222222222222222.zzac();
                zzaea zzw222222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222222222222;
                zzw222222222222222222222222222222.zzl(zzac222222222222222222222222222222);
                return;
            case 29:
                obfuscatedString8 = new ObfuscatedString(new long[]{2122599377325584620L, -5122980590907970780L});
                obfuscatedString = obfuscatedString8.toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i82222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222222222222222222222222.zzJ(i);
                zzakVar2222222222222222222222222222222.zzW(str2);
                zzakVar2222222222222222222222222222222.zzO(i2);
                zzakVar2222222222222222222222222222222.zzN(this.zzZ);
                zzakVar2222222222222222222222222222222.zzY(i82222222222222222222222222222222);
                zzakVar2222222222222222222222222222222.zzL(list);
                zzakVar2222222222222222222222222222222.zzz(str3);
                zzakVar2222222222222222222222222222222.zzE(this.zzk);
                zzam zzac2222222222222222222222222222222 = zzakVar2222222222222222222222222222222.zzac();
                zzaea zzw2222222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222222222222222;
                zzw2222222222222222222222222222222.zzl(zzac2222222222222222222222222222222);
                return;
            case 30:
                zzgaa zzm = zzgaa.zzm(zzi(str4));
                obfuscatedString3 = new ObfuscatedString(new long[]{-2704942815672506197L, -4824268325062719439L, -3193088195853834644L, -7008957142112601451L}).toString();
                list3 = zzm;
                str2 = obfuscatedString3;
                str3 = null;
                i2 = -1;
                list2 = list3;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i822222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar22222222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar22222222222222222222222222222222.zzJ(i);
                zzakVar22222222222222222222222222222222.zzW(str2);
                zzakVar22222222222222222222222222222222.zzO(i2);
                zzakVar22222222222222222222222222222222.zzN(this.zzZ);
                zzakVar22222222222222222222222222222222.zzY(i822222222222222222222222222222222);
                zzakVar22222222222222222222222222222222.zzL(list);
                zzakVar22222222222222222222222222222222.zzz(str3);
                zzakVar22222222222222222222222222222222.zzE(this.zzk);
                zzam zzac22222222222222222222222222222222 = zzakVar22222222222222222222222222222222.zzac();
                zzaea zzw22222222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw22222222222222222222222222222222;
                zzw22222222222222222222222222222222.zzl(zzac22222222222222222222222222222222);
                return;
            case 31:
                obfuscatedString = new ObfuscatedString(new long[]{5392310054438372221L, 752642426688962466L, 6407735106133261960L}).toString();
                str2 = obfuscatedString;
                list = null;
                str3 = null;
                i3 = -1;
                i2 = -1;
                if (this.zzN != null) {
                }
                int i8222222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar222222222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar222222222222222222222222222222222.zzJ(i);
                zzakVar222222222222222222222222222222222.zzW(str2);
                zzakVar222222222222222222222222222222222.zzO(i2);
                zzakVar222222222222222222222222222222222.zzN(this.zzZ);
                zzakVar222222222222222222222222222222222.zzY(i8222222222222222222222222222222222);
                zzakVar222222222222222222222222222222222.zzL(list);
                zzakVar222222222222222222222222222222222.zzz(str3);
                zzakVar222222222222222222222222222222222.zzE(this.zzk);
                zzam zzac222222222222222222222222222222222 = zzakVar222222222222222222222222222222222.zzac();
                zzaea zzw222222222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw222222222222222222222222222222222;
                zzw222222222222222222222222222222222.zzl(zzac222222222222222222222222222222222);
                return;
            case ' ':
                byte[] bArr4 = new byte[4];
                System.arraycopy(zzi(str4), 0, bArr4, 0, 4);
                zzgaa zzm2 = zzgaa.zzm(bArr4);
                obfuscatedString3 = new ObfuscatedString(new long[]{8258202365767559118L, 5909551045855338099L, -6426352050564250624L, 1773075946819304936L}).toString();
                list3 = zzm2;
                str2 = obfuscatedString3;
                str3 = null;
                i2 = -1;
                list2 = list3;
                list = list2;
                i3 = -1;
                if (this.zzN != null) {
                }
                int i82222222222222222222222222222222222 = (this.zzV ? 1 : 0) | (true != this.zzU ? 0 : 2);
                zzak zzakVar2222222222222222222222222222222222 = new zzak();
                if (zzcb.zzg(str2)) {
                }
                if (this.zza != null) {
                }
                zzakVar2222222222222222222222222222222222.zzJ(i);
                zzakVar2222222222222222222222222222222222.zzW(str2);
                zzakVar2222222222222222222222222222222222.zzO(i2);
                zzakVar2222222222222222222222222222222222.zzN(this.zzZ);
                zzakVar2222222222222222222222222222222222.zzY(i82222222222222222222222222222222222);
                zzakVar2222222222222222222222222222222222.zzL(list);
                zzakVar2222222222222222222222222222222222.zzz(str3);
                zzakVar2222222222222222222222222222222222.zzE(this.zzk);
                zzam zzac2222222222222222222222222222222222 = zzakVar2222222222222222222222222222222222.zzac();
                zzaea zzw2222222222222222222222222222222222 = zzacxVar.zzw(this.zzc, i6);
                this.zzW = zzw2222222222222222222222222222222222;
                zzw2222222222222222222222222222222222.zzl(zzac2222222222222222222222222222222222);
                return;
            default:
                throw zzcc.zza(new ObfuscatedString(new long[]{3172943562101232073L, 2109769476552504502L, -5855807120558636090L, -2336599655732139927L, -1581136519152739032L}).toString(), null);
        }
    }
}
