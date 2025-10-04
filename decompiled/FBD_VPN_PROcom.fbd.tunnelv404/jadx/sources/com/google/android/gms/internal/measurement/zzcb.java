package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* loaded from: classes2.dex */
public abstract class zzcb extends zzbn implements zzcc {
    public zzcb() {
        super(new ObfuscatedString(new long[]{5363611073299876194L, -7374511830745013971L, 7352483550488283467L, -8389044734020587077L, -7246608636113641854L, -1736100260239137652L, 6091949146333699314L, 19722142950881635L, -2829050576922416635L, -2774937616099064701L, -2099767133092971083L}).toString());
    }

    public static zzcc asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1878141030207102300L, -6402421931667956944L, 6648954401255183355L, -6171335143981604031L, -5990748726288746755L, 6103109078776321185L, 6239079182678705600L, -2896623350621248190L, 6713459836088037106L, 825511658693758837L, -4078006083444238191L}).toString());
        if (queryLocalInterface instanceof zzcc) {
            return (zzcc) queryLocalInterface;
        }
        return new zzca(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzcf zzcdVar;
        zzcf zzcfVar;
        zzcf zzcfVar2 = null;
        zzcf zzcfVar3 = null;
        zzcf zzcfVar4 = null;
        zzci zzciVar = null;
        zzci zzciVar2 = null;
        zzci zzciVar3 = null;
        zzcf zzcfVar5 = null;
        zzcf zzcfVar6 = null;
        zzcf zzcfVar7 = null;
        zzcf zzcfVar8 = null;
        zzcf zzcfVar9 = null;
        zzcf zzcfVar10 = null;
        zzck zzckVar = null;
        zzcf zzcfVar11 = null;
        zzcf zzcfVar12 = null;
        zzcf zzcfVar13 = null;
        zzcf zzcfVar14 = null;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzcl zzclVar = (zzcl) zzbo.zza(parcel, zzcl.CREATOR);
                long readLong = parcel.readLong();
                zzbo.zzc(parcel);
                initialize(asInterface, zzclVar, readLong);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                boolean zzg = zzbo.zzg(parcel);
                boolean zzg2 = zzbo.zzg(parcel);
                long readLong2 = parcel.readLong();
                zzbo.zzc(parcel);
                logEvent(readString, readString2, bundle, zzg, zzg2, readLong2);
                parcel2.writeNoException();
                return true;
            case 3:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                Bundle bundle2 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcfVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-4603357195109436213L, -8543343967630531512L, 3183686898088840973L, -1877854149203498681L, -2859133158423951062L, -8963493793762098898L, 8393062188667522970L, -4164114609622500439L, 3634144554321970839L}).toString());
                    if (queryLocalInterface instanceof zzcf) {
                        zzcdVar = (zzcf) queryLocalInterface;
                    } else {
                        zzcdVar = new zzcd(readStrongBinder);
                    }
                    zzcfVar = zzcdVar;
                }
                long readLong3 = parcel.readLong();
                zzbo.zzc(parcel);
                logEventAndBundle(readString3, readString4, bundle2, zzcfVar, readLong3);
                parcel2.writeNoException();
                return true;
            case 4:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zzg3 = zzbo.zzg(parcel);
                long readLong4 = parcel.readLong();
                zzbo.zzc(parcel);
                setUserProperty(readString5, readString6, asInterface2, zzg3, readLong4);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean zzg4 = zzbo.zzg(parcel);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-3796828920825333973L, -8107672884693636842L, -131729461130615511L, -7218303566063302558L, 1481008622315206210L, -7848393775534824669L, -3269276034772829509L, 7518606366120721051L, 4017362407618601983L}).toString());
                    if (queryLocalInterface2 instanceof zzcf) {
                        zzcfVar2 = (zzcf) queryLocalInterface2;
                    } else {
                        zzcfVar2 = new zzcd(readStrongBinder2);
                    }
                }
                zzbo.zzc(parcel);
                getUserProperties(readString7, readString8, zzg4, zzcfVar2);
                parcel2.writeNoException();
                return true;
            case 6:
                String readString9 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{2100226593412750406L, -6490887521941798677L, 7390460049810132641L, 7911190860999251159L, 32446215380576405L, -3460596461378580531L, 6592345225823427413L, 2475726411280086238L, -6689035408129265302L}).toString());
                    if (queryLocalInterface3 instanceof zzcf) {
                        zzcfVar14 = (zzcf) queryLocalInterface3;
                    } else {
                        zzcfVar14 = new zzcd(readStrongBinder3);
                    }
                }
                zzbo.zzc(parcel);
                getMaxUserProperties(readString9, zzcfVar14);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString10 = parcel.readString();
                long readLong5 = parcel.readLong();
                zzbo.zzc(parcel);
                setUserId(readString10, readLong5);
                parcel2.writeNoException();
                return true;
            case 8:
                Bundle bundle3 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                long readLong6 = parcel.readLong();
                zzbo.zzc(parcel);
                setConditionalUserProperty(bundle3, readLong6);
                parcel2.writeNoException();
                return true;
            case 9:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                Bundle bundle4 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                zzbo.zzc(parcel);
                clearConditionalUserProperty(readString11, readString12, bundle4);
                parcel2.writeNoException();
                return true;
            case 10:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface(new ObfuscatedString(new long[]{-8661750223061708083L, -7798328132514066744L, 6468421261617554803L, -9189656425834091348L, -8398751353199740007L, -6673450536719120227L, -1175591337948331176L, 5995302259747485223L, -7347583248452296610L}).toString());
                    if (queryLocalInterface4 instanceof zzcf) {
                        zzcfVar13 = (zzcf) queryLocalInterface4;
                    } else {
                        zzcfVar13 = new zzcd(readStrongBinder4);
                    }
                }
                zzbo.zzc(parcel);
                getConditionalUserProperties(readString13, readString14, zzcfVar13);
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zzg5 = zzbo.zzg(parcel);
                long readLong7 = parcel.readLong();
                zzbo.zzc(parcel);
                setMeasurementEnabled(zzg5, readLong7);
                parcel2.writeNoException();
                return true;
            case 12:
                long readLong8 = parcel.readLong();
                zzbo.zzc(parcel);
                resetAnalyticsData(readLong8);
                parcel2.writeNoException();
                return true;
            case 13:
                long readLong9 = parcel.readLong();
                zzbo.zzc(parcel);
                setMinimumSessionDuration(readLong9);
                parcel2.writeNoException();
                return true;
            case 14:
                long readLong10 = parcel.readLong();
                zzbo.zzc(parcel);
                setSessionTimeoutDuration(readLong10);
                parcel2.writeNoException();
                return true;
            case 15:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                long readLong11 = parcel.readLong();
                zzbo.zzc(parcel);
                setCurrentScreen(asInterface3, readString15, readString16, readLong11);
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface(new ObfuscatedString(new long[]{1975946895690114703L, -3149011821434561067L, 4342376700238044026L, 6029442310462915075L, 3556582192032287990L, 2595049830892019962L, -2205951950065652666L, 6895349132941299648L, 838397885205418944L}).toString());
                    if (queryLocalInterface5 instanceof zzcf) {
                        zzcfVar12 = (zzcf) queryLocalInterface5;
                    } else {
                        zzcfVar12 = new zzcd(readStrongBinder5);
                    }
                }
                zzbo.zzc(parcel);
                getCurrentScreenName(zzcfVar12);
                parcel2.writeNoException();
                return true;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface(new ObfuscatedString(new long[]{3532024794511329597L, -2448014085663654751L, -8319982594112443041L, -6422471394805785702L, 6695218991775293341L, 3416213405520455355L, -3743244139469756825L, 6072979017609859195L, -2329417204619251131L}).toString());
                    if (queryLocalInterface6 instanceof zzcf) {
                        zzcfVar11 = (zzcf) queryLocalInterface6;
                    } else {
                        zzcfVar11 = new zzcd(readStrongBinder6);
                    }
                }
                zzbo.zzc(parcel);
                getCurrentScreenClass(zzcfVar11);
                parcel2.writeNoException();
                return true;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface(new ObfuscatedString(new long[]{-2622196970476222693L, -22474303875375667L, -7024225798823931247L, 6758983480444160847L, 3349529247600331356L, 2994366416005996902L, 5498072901012006019L, 204891954978055775L, -3407623143023145606L}).toString());
                    if (queryLocalInterface7 instanceof zzck) {
                        zzckVar = (zzck) queryLocalInterface7;
                    } else {
                        zzckVar = new zzcj(readStrongBinder7);
                    }
                }
                zzbo.zzc(parcel);
                setInstanceIdProvider(zzckVar);
                parcel2.writeNoException();
                return true;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface(new ObfuscatedString(new long[]{2413896686762934599L, -6661294293051431962L, 4963810927814946879L, -3662556821202100251L, -7689495468588749203L, -346960814744057174L, 2023980579488198345L, -8513466582632965910L, -3203476366857866704L}).toString());
                    if (queryLocalInterface8 instanceof zzcf) {
                        zzcfVar10 = (zzcf) queryLocalInterface8;
                    } else {
                        zzcfVar10 = new zzcd(readStrongBinder8);
                    }
                }
                zzbo.zzc(parcel);
                getCachedAppInstanceId(zzcfVar10);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface(new ObfuscatedString(new long[]{-3041792908230856251L, -5117464768741513509L, 8648467511256433229L, -1476183346807703872L, -4711022048623583506L, -7488991873255056557L, 251680305428593277L, -1661829476450234753L, 7606974522455326383L}).toString());
                    if (queryLocalInterface9 instanceof zzcf) {
                        zzcfVar9 = (zzcf) queryLocalInterface9;
                    } else {
                        zzcfVar9 = new zzcd(readStrongBinder9);
                    }
                }
                zzbo.zzc(parcel);
                getAppInstanceId(zzcfVar9);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface(new ObfuscatedString(new long[]{-3797374842474004203L, 997309660561691163L, -3155936160216504370L, 57827879161337368L, 7124540190742099400L, 2628400113399017344L, -9162244002198584153L, 5324097130593907392L, 3280635099600494337L}).toString());
                    if (queryLocalInterface10 instanceof zzcf) {
                        zzcfVar8 = (zzcf) queryLocalInterface10;
                    } else {
                        zzcfVar8 = new zzcd(readStrongBinder10);
                    }
                }
                zzbo.zzc(parcel);
                getGmpAppId(zzcfVar8);
                parcel2.writeNoException();
                return true;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface(new ObfuscatedString(new long[]{1766667970626753358L, 2263829965553818266L, 7747711000313472284L, -1431735820616896305L, 4296327267003698244L, 1926192015788721386L, -2089545090377452645L, 4863529871196212749L, -1220924971316458520L}).toString());
                    if (queryLocalInterface11 instanceof zzcf) {
                        zzcfVar7 = (zzcf) queryLocalInterface11;
                    } else {
                        zzcfVar7 = new zzcd(readStrongBinder11);
                    }
                }
                zzbo.zzc(parcel);
                generateEventId(zzcfVar7);
                parcel2.writeNoException();
                return true;
            case 23:
                String readString17 = parcel.readString();
                long readLong12 = parcel.readLong();
                zzbo.zzc(parcel);
                beginAdUnitExposure(readString17, readLong12);
                parcel2.writeNoException();
                return true;
            case 24:
                String readString18 = parcel.readString();
                long readLong13 = parcel.readLong();
                zzbo.zzc(parcel);
                endAdUnitExposure(readString18, readLong13);
                parcel2.writeNoException();
                return true;
            case 25:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivityStarted(asInterface4, readLong14);
                parcel2.writeNoException();
                return true;
            case 26:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivityStopped(asInterface5, readLong15);
                parcel2.writeNoException();
                return true;
            case 27:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                long readLong16 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivityCreated(asInterface6, bundle5, readLong16);
                parcel2.writeNoException();
                return true;
            case 28:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivityDestroyed(asInterface7, readLong17);
                parcel2.writeNoException();
                return true;
            case 29:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivityPaused(asInterface8, readLong18);
                parcel2.writeNoException();
                return true;
            case 30:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivityResumed(asInterface9, readLong19);
                parcel2.writeNoException();
                return true;
            case 31:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface(new ObfuscatedString(new long[]{2753677834544761304L, 5177543974677540020L, 8922285455097369352L, -4541283242469003942L, -974188382708351974L, -10595037406341032L, -3485048254075911091L, 1093912850417284709L, -2276038979883664656L}).toString());
                    if (queryLocalInterface12 instanceof zzcf) {
                        zzcfVar6 = (zzcf) queryLocalInterface12;
                    } else {
                        zzcfVar6 = new zzcd(readStrongBinder12);
                    }
                }
                long readLong20 = parcel.readLong();
                zzbo.zzc(parcel);
                onActivitySaveInstanceState(asInterface10, zzcfVar6, readLong20);
                parcel2.writeNoException();
                return true;
            case 32:
                Bundle bundle6 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface(new ObfuscatedString(new long[]{9111322721073820331L, 3942369847523588293L, -362699687551673457L, -6839083472375660618L, 3432814757996325095L, -7706120115795694102L, -1965465717451629287L, -479181578124570646L, 1372238609234519597L}).toString());
                    if (queryLocalInterface13 instanceof zzcf) {
                        zzcfVar5 = (zzcf) queryLocalInterface13;
                    } else {
                        zzcfVar5 = new zzcd(readStrongBinder13);
                    }
                }
                long readLong21 = parcel.readLong();
                zzbo.zzc(parcel);
                performAction(bundle6, zzcfVar5, readLong21);
                parcel2.writeNoException();
                return true;
            case 33:
                int readInt = parcel.readInt();
                String readString19 = parcel.readString();
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbo.zzc(parcel);
                logHealthData(readInt, readString19, asInterface11, asInterface12, asInterface13);
                parcel2.writeNoException();
                return true;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface(new ObfuscatedString(new long[]{-692367887998303351L, -86863527302514326L, 3594119794825505432L, 5956720144582418139L, -2706753329295609084L, 5689195045820831149L, -4224780926823926306L, 8345080649544782494L, -9058170185477098126L, 5468939028060280627L}).toString());
                    if (queryLocalInterface14 instanceof zzci) {
                        zzciVar3 = (zzci) queryLocalInterface14;
                    } else {
                        zzciVar3 = new zzcg(readStrongBinder14);
                    }
                }
                zzbo.zzc(parcel);
                setEventInterceptor(zzciVar3);
                parcel2.writeNoException();
                return true;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface(new ObfuscatedString(new long[]{8825732387894635463L, 4529598464686647355L, 1444194054882902922L, 5731320285266148944L, 8412189560807848896L, -3226037872251721815L, -640456963298113053L, -4067155853183676203L, 8315965240339171908L, -1045828945935261259L}).toString());
                    if (queryLocalInterface15 instanceof zzci) {
                        zzciVar2 = (zzci) queryLocalInterface15;
                    } else {
                        zzciVar2 = new zzcg(readStrongBinder15);
                    }
                }
                zzbo.zzc(parcel);
                registerOnMeasurementEventListener(zzciVar2);
                parcel2.writeNoException();
                return true;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface(new ObfuscatedString(new long[]{-2658390606437496731L, -3381539899769089060L, -972268818561696942L, 5097596155788120287L, 5266279558957750244L, -7006316746353423586L, -6195065177387613382L, -6244619080282203359L, 2823273703213605381L, -2530457933015063322L}).toString());
                    if (queryLocalInterface16 instanceof zzci) {
                        zzciVar = (zzci) queryLocalInterface16;
                    } else {
                        zzciVar = new zzcg(readStrongBinder16);
                    }
                }
                zzbo.zzc(parcel);
                unregisterOnMeasurementEventListener(zzciVar);
                parcel2.writeNoException();
                return true;
            case 37:
                HashMap zzb = zzbo.zzb(parcel);
                zzbo.zzc(parcel);
                initForTests(zzb);
                parcel2.writeNoException();
                return true;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface(new ObfuscatedString(new long[]{-6034834437824552150L, 5268694032905222298L, -7791557954684589734L, -4825759957626717517L, 1211743418314877971L, -7768879752980350622L, 6277293941923442656L, -5253252448433197843L, 7250616253341600380L}).toString());
                    if (queryLocalInterface17 instanceof zzcf) {
                        zzcfVar4 = (zzcf) queryLocalInterface17;
                    } else {
                        zzcfVar4 = new zzcd(readStrongBinder17);
                    }
                }
                int readInt2 = parcel.readInt();
                zzbo.zzc(parcel);
                getTestFlag(zzcfVar4, readInt2);
                parcel2.writeNoException();
                return true;
            case 39:
                boolean zzg6 = zzbo.zzg(parcel);
                zzbo.zzc(parcel);
                setDataCollectionEnabled(zzg6);
                parcel2.writeNoException();
                return true;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface(new ObfuscatedString(new long[]{4643955796507448457L, 6238631632837080890L, 8425679399513628348L, -3275642760170894616L, 876127814671871899L, -7326896294026540890L, 5272769468894239781L, 5139801821409219678L, -5258152389553941852L}).toString());
                    if (queryLocalInterface18 instanceof zzcf) {
                        zzcfVar3 = (zzcf) queryLocalInterface18;
                    } else {
                        zzcfVar3 = new zzcd(readStrongBinder18);
                    }
                }
                zzbo.zzc(parcel);
                isDataCollectionEnabled(zzcfVar3);
                parcel2.writeNoException();
                return true;
            case 41:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                zzbo.zzc(parcel);
                setDefaultEventParameters(bundle7);
                parcel2.writeNoException();
                return true;
            case 43:
                long readLong22 = parcel.readLong();
                zzbo.zzc(parcel);
                clearMeasurementEnabled(readLong22);
                parcel2.writeNoException();
                return true;
            case 44:
                Bundle bundle8 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                long readLong23 = parcel.readLong();
                zzbo.zzc(parcel);
                setConsent(bundle8, readLong23);
                parcel2.writeNoException();
                return true;
            case 45:
                Bundle bundle9 = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
                long readLong24 = parcel.readLong();
                zzbo.zzc(parcel);
                setConsentThirdParty(bundle9, readLong24);
                parcel2.writeNoException();
                return true;
        }
    }
}
