package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0370x5ac5058d;
import defpackage.C0419x35cc9f53;
import defpackage.C0641x7afeb542;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* loaded from: classes3.dex */
public final class ConstructorConstructor {
    private final Map<Type, InstanceCreator<?>> instanceCreators;
    private final List<ReflectionAccessFilter> reflectionFilters;
    private final boolean useJdkUnsafe;

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map, boolean z, List<ReflectionAccessFilter> list) {
        this.instanceCreators = map;
        this.useJdkUnsafe = z;
        this.reflectionFilters = list;
    }

    public static String checkInstantiable(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return new ObfuscatedString(new long[]{6972178648763645398L, -219267302561130749L, -5842413016350900626L, -4810538795813022099L, 562165698511607737L, 7208432316561336273L, -715250270526983725L, 3746116432993249749L, 7948278532437224859L, -4446050546556079058L, -7653304095353159719L, 6445525287132307360L, 2215048522143310302L, 5168288893143490527L, 668794626843856186L}).toString() + cls.getName();
        }
        if (Modifier.isAbstract(modifiers)) {
            return new ObfuscatedString(new long[]{2003836565785795768L, -4432508148240886994L, 6533287085296438238L, -4448434102747735892L, 7426671451881827439L, 1431387139979407944L, 5581596028928321529L, -8204713924764839163L, -9151414591931565616L, -6736794678153126130L, 7993581888839667105L, 2729954398240666144L, 1050480534277243009L, 6389167883247423738L, -9104435291389803281L, 453691047324920578L, 7773908089036283513L, 5099323847266065351L, 6441483607913919912L}).toString() + cls.getName() + new ObfuscatedString(new long[]{7702276702753562575L, -2867935778551389278L}).toString() + TroubleshootingGuide.createUrl(new ObfuscatedString(new long[]{1132559967875099088L, 2045807379326075696L, 2681794518043337456L, -1609549955768289486L}).toString());
        }
        return null;
    }

    public static /* synthetic */ Object lambda$get$2(String str) {
        throw new JsonIOException(str);
    }

    public static /* synthetic */ Object lambda$get$3(String str) {
        throw new JsonIOException(str);
    }

    public static /* synthetic */ Object lambda$newDefaultConstructor$6(String str) {
        throw new JsonIOException(str);
    }

    public static /* synthetic */ Object lambda$newDefaultConstructor$7(String str) {
        throw new JsonIOException(str);
    }

    public static /* synthetic */ Object lambda$newDefaultConstructor$8(Constructor constructor) {
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e) {
            throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
        } catch (InstantiationException e2) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-1222805274592322294L, -932830955673155355L, -968222467933454352L, 4810213857570903620L, -3823834814661700327L}).toString());
            sb.append(ReflectionHelper.constructorToString(constructor));
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2610042012406328964L, 6650674291582016044L, -4343350277113736948L}), sb), e2);
        } catch (InvocationTargetException e3) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new ObfuscatedString(new long[]{7366780885224944472L, 8254623993947918357L, -2897553575978276878L, -5063634250412768257L, 1560490628753135348L}).toString());
            sb2.append(ReflectionHelper.constructorToString(constructor));
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1577046560401738240L, 1573633900145578492L, 2823519588712485796L}), sb2), e3.getCause());
        }
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$10() {
        return new LinkedHashSet();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$11() {
        return new ArrayDeque();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$12() {
        return new ArrayList();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$13() {
        return new ConcurrentSkipListMap();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$14() {
        return new ConcurrentHashMap();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$15() {
        return new TreeMap();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$16() {
        return new LinkedHashMap();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$17() {
        return new LinkedTreeMap();
    }

    public static /* synthetic */ Object lambda$newDefaultImplementationConstructor$9() {
        return new TreeSet();
    }

    public static /* synthetic */ Object lambda$newSpecialCollectionConstructor$4(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            throw new JsonIOException(new ObfuscatedString(new long[]{7698792793794097522L, -7489625199664400127L, 7795460740754504939L, -2936013055102096476L}).toString() + type.toString());
        }
        throw new JsonIOException(new ObfuscatedString(new long[]{-2656181153006432541L, -8521028101791993609L, 1553996090801747891L, 4390976971440477112L}).toString() + type.toString());
    }

    public static /* synthetic */ Object lambda$newSpecialCollectionConstructor$5(Type type) {
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return new EnumMap((Class) type2);
            }
            throw new JsonIOException(new ObfuscatedString(new long[]{4674522287083034945L, -6390224531693238924L, 2224487221521578267L, -8268840452230690315L}).toString() + type.toString());
        }
        throw new JsonIOException(new ObfuscatedString(new long[]{8176604813661528394L, 5449295733953689666L, 4512720843427930437L, 6327848976259377808L}).toString() + type.toString());
    }

    public static /* synthetic */ Object lambda$newUnsafeAllocator$18(Class cls) {
        try {
            return UnsafeAllocator.INSTANCE.newInstance(cls);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-6798514717578456090L, 1100936180404858780L, 8695466629393054284L, -8396544706564179649L, -37042868390448461L}).toString());
            sb.append(cls);
            throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5454464597689229966L, -3118535585782456401L, 5954911266026050663L, 7026865204730666568L, 8698937176613701641L, 6191805233815232477L, 499540632465376637L, -264641104156253828L, -4017561356389887384L, -1459107009067281116L, 4169226341851245743L, 5187012477801789010L, -1442262079310220057L, 4262809386427746898L, 8666562461617007716L, 2621534190320622465L}), sb), e);
        }
    }

    public static /* synthetic */ Object lambda$newUnsafeAllocator$19(String str) {
        throw new JsonIOException(str);
    }

    private static <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> cls, ReflectionAccessFilter.FilterResult filterResult) {
        String tryMakeAccessible;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            ReflectionAccessFilter.FilterResult filterResult2 = ReflectionAccessFilter.FilterResult.ALLOW;
            if (filterResult != filterResult2 && (!ReflectionAccessFilterHelper.canAccess(declaredConstructor, null) || (filterResult == ReflectionAccessFilter.FilterResult.BLOCK_ALL && !Modifier.isPublic(declaredConstructor.getModifiers())))) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-862218019362674048L, -6417322197297084605L, 2184797193521281467L, 8741194725187583874L, -501030422125789581L, -8007216650441966664L}).toString());
                sb.append(cls);
                return new C0641x7afeb542(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{9038459825380138866L, 5233618315160727636L, 5528936012412906094L, -2033625619971619820L, 2509899780062706453L, 2448865033556860389L, 6846803857384180390L, 2615462146345564416L, 5724966629671435995L, -3292003456518776990L, -2214732597082512888L, 8126517159814746983L, -4208135473875315630L, -3719057225120971711L, 7720209977061974200L, 7430988346726026507L, -6990744603807925703L, 5273633944122522322L, -5023958509853182812L, 4565654240699180057L, -6433891636709524051L, 7521929807286004968L, 6502257626111859687L, 3747438503707621526L, 7564175874143476084L, -5369750896825154745L, -8575054393567328130L, -2425729718156132768L, -3216861406276690216L, -5071851944395118320L}), sb), 2);
            }
            if (filterResult == filterResult2 && (tryMakeAccessible = ReflectionHelper.tryMakeAccessible(declaredConstructor)) != null) {
                return new C0641x7afeb542(tryMakeAccessible, 3);
            }
            return new C0419x35cc9f53(declaredConstructor, 9);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private static <T> ObjectConstructor<T> newDefaultImplementationConstructor(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            if (SortedSet.class.isAssignableFrom(cls)) {
                return new C0370x5ac5058d(6);
            }
            if (Set.class.isAssignableFrom(cls)) {
                return new C0370x5ac5058d(7);
            }
            if (Queue.class.isAssignableFrom(cls)) {
                return new C0370x5ac5058d(8);
            }
            return new C0370x5ac5058d(9);
        }
        if (Map.class.isAssignableFrom(cls)) {
            if (ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
                return new C0370x5ac5058d(10);
            }
            if (ConcurrentMap.class.isAssignableFrom(cls)) {
                return new C0370x5ac5058d(11);
            }
            if (SortedMap.class.isAssignableFrom(cls)) {
                return new C0370x5ac5058d(12);
            }
            if ((type instanceof ParameterizedType) && !String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) {
                return new C0370x5ac5058d(13);
            }
            return new C0370x5ac5058d(5);
        }
        return null;
    }

    private static <T> ObjectConstructor<T> newSpecialCollectionConstructor(final Type type, Class<? super T> cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            final int i = 0;
            return new ObjectConstructor() { // from class: 둥뒷뎻땁뒤딻뎰돸땐뎽듰두듬득땍땱땹뒉딽뎬딃땱득뎡돶듐땔딞돸땍도땲땁둘땡땱땯땡돰뒬뎰땟됫듼땥땹뒾뒵땹땯두땪땡듟든딹딹딐듟땰땻땁딐듽됫딜뎻딃돴듬땜땡둔땍딅돛땹됐땮땳뎻돵듽듟딽듼디두듼뒐땋듬둑땻뒉땐든뎰듔딨뒝돵두뒨땔둠뒀듼땨듽딎땵듐뒐됴됨땲땔될뒼딟뒛뒛딟땳드됩땋딻딃
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    Object lambda$newSpecialCollectionConstructor$4;
                    Object lambda$newSpecialCollectionConstructor$5;
                    switch (i) {
                        case 0:
                            lambda$newSpecialCollectionConstructor$4 = ConstructorConstructor.lambda$newSpecialCollectionConstructor$4(type);
                            return lambda$newSpecialCollectionConstructor$4;
                        default:
                            lambda$newSpecialCollectionConstructor$5 = ConstructorConstructor.lambda$newSpecialCollectionConstructor$5(type);
                            return lambda$newSpecialCollectionConstructor$5;
                    }
                }
            };
        }
        if (cls == EnumMap.class) {
            final int i2 = 1;
            return new ObjectConstructor() { // from class: 둥뒷뎻땁뒤딻뎰돸땐뎽듰두듬득땍땱땹뒉딽뎬딃땱득뎡돶듐땔딞돸땍도땲땁둘땡땱땯땡돰뒬뎰땟됫듼땥땹뒾뒵땹땯두땪땡듟든딹딹딐듟땰땻땁딐듽됫딜뎻딃돴듬땜땡둔땍딅돛땹됐땮땳뎻돵듽듟딽듼디두듼뒐땋듬둑땻뒉땐든뎰듔딨뒝돵두뒨땔둠뒀듼땨듽딎땵듐뒐됴됨땲땔될뒼딟뒛뒛딟땳드됩땋딻딃
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    Object lambda$newSpecialCollectionConstructor$4;
                    Object lambda$newSpecialCollectionConstructor$5;
                    switch (i2) {
                        case 0:
                            lambda$newSpecialCollectionConstructor$4 = ConstructorConstructor.lambda$newSpecialCollectionConstructor$4(type);
                            return lambda$newSpecialCollectionConstructor$4;
                        default:
                            lambda$newSpecialCollectionConstructor$5 = ConstructorConstructor.lambda$newSpecialCollectionConstructor$5(type);
                            return lambda$newSpecialCollectionConstructor$5;
                    }
                }
            };
        }
        return null;
    }

    private <T> ObjectConstructor<T> newUnsafeAllocator(Class<? super T> cls) {
        if (this.useJdkUnsafe) {
            return new C0419x35cc9f53(cls, 8);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6339305703193817664L, -2804765859194400298L, -7120074949217276636L, 1360268961864644443L, -5502638974098356839L}).toString());
        sb.append(cls);
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6908295071213176662L, 4389037708576386342L, 7971576895545209928L, 3839189468158983026L, 8674030644922989108L, -5884948956826685162L, 3660206272405375087L, 375009560772827748L, -6576168788389215988L, -5394668212138853988L, -53729338683204419L, 9063365232758479539L, 6020091681147456405L, 5644962377370999342L, -6282207758927412983L, -9160566283616475602L, -2988851091588646462L, 6850528306074283295L, 4507895013340126368L, -6019485504967568422L, 9017839058950590734L, 7575801621011129276L, -6555232196431499417L, 2694292831972206286L}), sb);
        if (cls.getDeclaredConstructors().length == 0) {
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7614842563132613763L, 2129015129687072351L, -5847307390028270127L, 7640279707179477647L, -1354176164015978419L, -6664128719694373696L, -630180673033731452L, -2168512969987079260L, 3858623978619762132L, 7506187387034799111L, -3058103267832050366L}), AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4));
        }
        return new C0641x7afeb542(m3332x9d12c1f4, 4);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ Object m1299xfbe0c504() {
        return lambda$newDefaultImplementationConstructor$16();
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ Object m1300x3271d0aa() {
        return lambda$newDefaultImplementationConstructor$12();
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ Object m1301x1378447b() {
        return lambda$newDefaultImplementationConstructor$17();
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤 */
    public static /* synthetic */ Object m1304x9e171bf9() {
        return lambda$newDefaultImplementationConstructor$15();
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두 */
    public static /* synthetic */ Object m1306x95f25580() {
        return lambda$newDefaultImplementationConstructor$14();
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷 */
    public static /* synthetic */ Object m1307x3db60231() {
        return lambda$newDefaultImplementationConstructor$9();
    }

    /* renamed from: 뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨 */
    public static /* synthetic */ Object m1313xab142723() {
        return lambda$newDefaultImplementationConstructor$10();
    }

    /* renamed from: 뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬 */
    public static /* synthetic */ Object m1316x952a0a9e() {
        return lambda$newDefaultImplementationConstructor$13();
    }

    /* renamed from: 뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅 */
    public static /* synthetic */ Object m1317xc20437a5() {
        return lambda$newDefaultImplementationConstructor$11();
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        final int i = 1;
        final int i2 = 0;
        final Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        final InstanceCreator<?> instanceCreator = this.instanceCreators.get(type);
        if (instanceCreator != null) {
            return new ObjectConstructor() { // from class: 둥드땵뒛딝돤뒼도땣돵땔딃됨뒈딸돝둠둘땱뒨뎻딸든딁돷땲땧땁딞뎠돵둔될듟디땱땰돠뒹뒻됩땡돼땭듽돝뒬듔드뒻돝딻듽뒋딻뒈땹땮땨됐딝돳뎰듽듔돠두뒛딞딃듰뎨땣드돤땠딁땃딐뒘땲뎽땝뒵땬돳땄뒛둔듌따딟듨땨뒋딤듨뎰땔뒀땄뎨딟듌땟땥돨듔땬뒘돳든돛땩땜딸돨두됨득된디됩땋땭땠뒹땱됐듟
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    Object createInstance;
                    Object createInstance2;
                    switch (i2) {
                        case 0:
                            createInstance = instanceCreator.createInstance(type);
                            return createInstance;
                        default:
                            createInstance2 = instanceCreator.createInstance(type);
                            return createInstance2;
                    }
                }
            };
        }
        final InstanceCreator<?> instanceCreator2 = this.instanceCreators.get(rawType);
        if (instanceCreator2 != null) {
            return new ObjectConstructor() { // from class: 둥드땵뒛딝돤뒼도땣돵땔딃됨뒈딸돝둠둘땱뒨뎻딸든딁돷땲땧땁딞뎠돵둔될듟디땱땰돠뒹뒻됩땡돼땭듽돝뒬듔드뒻돝딻듽뒋딻뒈땹땮땨됐딝돳뎰듽듔돠두뒛딞딃듰뎨땣드돤땠딁땃딐뒘땲뎽땝뒵땬돳땄뒛둔듌따딟듨땨뒋딤듨뎰땔뒀땄뎨딟듌땟땥돨듔땬뒘돳든돛땩땜딸돨두됨득된디됩땋땭땠뒹땱됐듟
                @Override // com.google.gson.internal.ObjectConstructor
                public final Object construct() {
                    Object createInstance;
                    Object createInstance2;
                    switch (i) {
                        case 0:
                            createInstance = instanceCreator2.createInstance(type);
                            return createInstance;
                        default:
                            createInstance2 = instanceCreator2.createInstance(type);
                            return createInstance2;
                    }
                }
            };
        }
        ObjectConstructor<T> newSpecialCollectionConstructor = newSpecialCollectionConstructor(type, rawType);
        if (newSpecialCollectionConstructor != null) {
            return newSpecialCollectionConstructor;
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.reflectionFilters, rawType);
        ObjectConstructor<T> newDefaultConstructor = newDefaultConstructor(rawType, filterResult);
        if (newDefaultConstructor != null) {
            return newDefaultConstructor;
        }
        ObjectConstructor<T> newDefaultImplementationConstructor = newDefaultImplementationConstructor(type, rawType);
        if (newDefaultImplementationConstructor != null) {
            return newDefaultImplementationConstructor;
        }
        String checkInstantiable = checkInstantiable(rawType);
        if (checkInstantiable != null) {
            return new C0641x7afeb542(checkInstantiable, 0);
        }
        if (filterResult == ReflectionAccessFilter.FilterResult.ALLOW) {
            return newUnsafeAllocator(rawType);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-2400961034867038580L, -7924415727467689946L, 5751135364492377248L, 2995112785944425773L, 2363037204040359367L}).toString());
        sb.append(rawType);
        return new C0641x7afeb542(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3317812698770964847L, 5091897179116372215L, -5206824636597894501L, -3559781914975580716L, 4782983310786873350L, 1687581117656019299L, -5509438473750347686L, 2194886581354590497L, -172512337180540235L, 668116208372064384L, -644708224537550449L, 8112239747606492634L, -2305865652000484569L, 3540867844595177935L, 2092693808668670268L, 540320478363056077L, -6692476244177597284L, -2554372015009493019L, -473097828451522913L, 8717567565383388723L, 1537972586703515010L, -1119728516912175470L, -107097871174679862L, 6314237896571797448L}), sb), 1);
    }

    public String toString() {
        return this.instanceCreators.toString();
    }
}
