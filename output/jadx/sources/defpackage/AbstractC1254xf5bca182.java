package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* renamed from: 땭땐딠돸땰딞땹뒷돳딟딻땯뒋디들돴됴땩딄돝땤뒝뎸듐뒻땝땪딟땄땱땠딟듨땁땐드됴될돠땅땜뎹땬딄듐땜둬딄둬들듬따득들땲됨뎰될딹땐뒋돤든듌딤뎡뒐뒝딨딃뒛득둘듸딃땐둑땀뎨돵뒵듐됨뎹땪뒋둑뒐땳든뎹뒷땹뎨땳딅딀딀땻뎨듬듨듼딨뎹딄듽딨돝땣땰둣듐땠딟두들뒐돨땩둔뒉땐듽땵땠둣땱땨딟, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1254xf5bca182 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static int m4016xfbe0c504(String str) {
        char c;
        str.getClass();
        switch (str.hashCode()) {
            case -1095013018:
                if (str.equals(TypedValues.Custom.S_DIMENSION)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -925155509:
                if (str.equals(TypedValues.Custom.S_REFERENCE)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -891985903:
                if (str.equals(TypedValues.Custom.S_STRING)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 64711720:
                if (str.equals(TypedValues.Custom.S_BOOLEAN)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 94842723:
                if (str.equals(TypedValues.Custom.S_COLOR)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 97526364:
                if (str.equals(TypedValues.Custom.S_FLOAT)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1958052158:
                if (str.equals(TypedValues.Custom.S_INT)) {
                    c = 6;
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
                return TypedValues.Custom.TYPE_DIMENSION;
            case 1:
                return TypedValues.Custom.TYPE_REFERENCE;
            case 2:
                return TypedValues.Custom.TYPE_STRING;
            case 3:
                return TypedValues.Custom.TYPE_BOOLEAN;
            case 4:
                return TypedValues.Custom.TYPE_COLOR;
            case 5:
                return TypedValues.Custom.TYPE_FLOAT;
            case 6:
                return TypedValues.Custom.TYPE_INT;
            default:
                return -1;
        }
    }
}
