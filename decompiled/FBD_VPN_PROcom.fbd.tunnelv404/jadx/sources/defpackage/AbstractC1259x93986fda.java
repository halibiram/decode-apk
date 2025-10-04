package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* renamed from: 땮돸땵땔땥듽땳드땰땱땁뒝둥땱됐듰됐뒘땧뎨땹듟딝듌땁돤딌될뎹딞듼땠뒘땱뒐됨도땨땵땅뎡돨딤듸둬됨딝땋땥뎻돵돳듼땳땸땮둡땨딌듬뒻뒵듬뎬듟뒵듌득둡뒝됨땃땭뒙땃뒹뒙뒵땤땯땵돵딃땔땳돶뒙딻뎬따땪땲딃땃듌딃딎듼뎡땻땣듨둬땯땬돛둠땯땸땯돷돝땻듌뎹뎰땫됨듟딝됫딽딟돨따듸딅디딨땥, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1259x93986fda {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static int m4024xfbe0c504(String str) {
        char c;
        str.getClass();
        switch (str.hashCode()) {
            case -1996906958:
                if (str.equals(TypedValues.TransitionType.S_TRANSITION_FLAGS)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1992012396:
                if (str.equals(TypedValues.TransitionType.S_DURATION)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1357874275:
                if (str.equals(TypedValues.TransitionType.S_INTERPOLATOR)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1298065308:
                if (str.equals(TypedValues.TransitionType.S_AUTO_TRANSITION)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3707:
                if (str.equals(TypedValues.TransitionType.S_TO)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3151786:
                if (str.equals(TypedValues.TransitionType.S_FROM)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1310733335:
                if (str.equals(TypedValues.TransitionType.S_PATH_MOTION_ARC)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1839260940:
                if (str.equals(TypedValues.TransitionType.S_STAGGERED)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return TypedValues.TransitionType.TYPE_TRANSITION_FLAGS;
            case 1:
                return TypedValues.TransitionType.TYPE_DURATION;
            case 2:
                return TypedValues.TransitionType.TYPE_INTERPOLATOR;
            case 3:
                return TypedValues.TransitionType.TYPE_AUTO_TRANSITION;
            case 4:
                return TypedValues.TransitionType.TYPE_TO;
            case 5:
                return TypedValues.TransitionType.TYPE_FROM;
            case 6:
                return 509;
            case 7:
                return TypedValues.TransitionType.TYPE_STAGGERED;
            default:
                return -1;
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static int m4025x3271d0aa(int i) {
        if (i != 509) {
            switch (i) {
                case TypedValues.TransitionType.TYPE_DURATION /* 700 */:
                    return 2;
                case TypedValues.TransitionType.TYPE_FROM /* 701 */:
                case TypedValues.TransitionType.TYPE_TO /* 702 */:
                    return 8;
                default:
                    switch (i) {
                        case TypedValues.TransitionType.TYPE_INTERPOLATOR /* 705 */:
                        case TypedValues.TransitionType.TYPE_TRANSITION_FLAGS /* 707 */:
                            return 8;
                        case TypedValues.TransitionType.TYPE_STAGGERED /* 706 */:
                            return 4;
                        default:
                            return -1;
                    }
            }
        }
        return 2;
    }
}
