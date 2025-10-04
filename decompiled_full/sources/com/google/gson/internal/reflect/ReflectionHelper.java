package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import com.google.gson.internal.TroubleshootingGuide;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes3.dex */
public class ReflectionHelper {
    private static final RecordHelper RECORD_HELPER;

    /* loaded from: classes3.dex */
    public static abstract class RecordHelper {
        private RecordHelper() {
        }

        public abstract Method getAccessor(Class<?> cls, Field field);

        public abstract <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls);

        public abstract String[] getRecordComponentNames(Class<?> cls);

        public abstract boolean isRecord(Class<?> cls);
    }

    /* loaded from: classes3.dex */
    public static class RecordNotSupportedHelper extends RecordHelper {
        private RecordNotSupportedHelper() {
            super();
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public Method getAccessor(Class<?> cls, Field field) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-2951253686732604601L, 3917916162081599522L, 1090091163713404951L, 769636319602899135L, 6511827605874879458L, -2350468711820746932L, -721323773835362881L, 1156559338127815410L, -7269494109063358840L, 7191224621039956116L}).toString());
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-5293327365492406274L, -1674861148192375509L, 8431902090780628729L, 6916385391256809663L, 1252288954434554992L, 3985659790038797032L, 5439323309533309776L, 1490245106614777863L, -1003933016668378135L, -8279409369365969571L}).toString());
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public String[] getRecordComponentNames(Class<?> cls) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-5758933619192461404L, -1627720466892912161L, 1761051175972111223L, -7250659372005632197L, -4252458746141034718L, 845351920743073194L, 855022122471317758L, -4787032469810364101L, -4532782853936217117L, -7004594671127592422L}).toString());
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public boolean isRecord(Class<?> cls) {
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static class RecordSupportedHelper extends RecordHelper {
        private final Method getName;
        private final Method getRecordComponents;
        private final Method getType;
        private final Method isRecord;

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public Method getAccessor(Class<?> cls, Field field) {
            try {
                return cls.getMethod(field.getName(), null);
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
            try {
                Object[] objArr = (Object[]) this.getRecordComponents.invoke(cls, null);
                Class<?>[] clsArr = new Class[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    clsArr[i] = (Class) this.getType.invoke(objArr[i], null);
                }
                return cls.getDeclaredConstructor(clsArr);
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public String[] getRecordComponentNames(Class<?> cls) {
            try {
                Object[] objArr = (Object[]) this.getRecordComponents.invoke(cls, null);
                String[] strArr = new String[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    strArr[i] = (String) this.getName.invoke(objArr[i], null);
                }
                return strArr;
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.RecordHelper
        public boolean isRecord(Class<?> cls) {
            try {
                return ((Boolean) this.isRecord.invoke(cls, null)).booleanValue();
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.createExceptionForRecordReflectionException(e);
            }
        }

        private RecordSupportedHelper() {
            super();
            this.isRecord = Class.class.getMethod(new ObfuscatedString(new long[]{-8823977742160885427L, 759979135586097198L}).toString(), null);
            this.getRecordComponents = Class.class.getMethod(new ObfuscatedString(new long[]{5932100292412795718L, 7018394068184039271L, -6517958022215980682L, 764644063689490174L}).toString(), null);
            Class<?> cls = Class.forName(new ObfuscatedString(new long[]{-1146985279997211860L, 1379611016465449219L, 2924148171174685782L, -5993729948039413433L, 989839857486576316L, 48165408704572541L}).toString());
            this.getName = cls.getMethod(new ObfuscatedString(new long[]{-7162061616196772065L, -8583383905810766956L}).toString(), null);
            this.getType = cls.getMethod(new ObfuscatedString(new long[]{-2032364961260445069L, 6163006888284838845L}).toString(), null);
        }
    }

    static {
        RecordHelper recordNotSupportedHelper;
        try {
            recordNotSupportedHelper = new RecordSupportedHelper();
        } catch (ReflectiveOperationException unused) {
            recordNotSupportedHelper = new RecordNotSupportedHelper();
        }
        RECORD_HELPER = recordNotSupportedHelper;
    }

    private ReflectionHelper() {
    }

    private static void appendExecutableParameters(AccessibleObject accessibleObject, StringBuilder sb) {
        Class<?>[] parameterTypes;
        sb.append('(');
        if (accessibleObject instanceof Method) {
            parameterTypes = ((Method) accessibleObject).getParameterTypes();
        } else {
            parameterTypes = ((Constructor) accessibleObject).getParameterTypes();
        }
        for (int i = 0; i < parameterTypes.length; i++) {
            if (i > 0) {
                sb.append(new ObfuscatedString(new long[]{6205185503693516143L, -2392423174123135795L}).toString());
            }
            sb.append(parameterTypes[i].getSimpleName());
        }
        sb.append(')');
    }

    public static String constructorToString(Constructor<?> constructor) {
        StringBuilder sb = new StringBuilder(constructor.getDeclaringClass().getName());
        appendExecutableParameters(constructor, sb);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static RuntimeException createExceptionForRecordReflectionException(ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException(new ObfuscatedString(new long[]{4526152025704993225L, 8801293123593200755L, 2321356876417224848L, 5718864515760025492L, 4799794808482821378L, 6573881484857071074L, 8733259312633117806L, 990480940958046649L, 459338835527855279L, -5001156114139444531L, -7485539097735490367L, -6223939858681599950L, -8420109599350646295L, 5783846126061819071L, -6251308960021239207L, -6351947634904128793L, 6708928749007590930L, -7826124300481934029L, -3095496314795276617L, -4518035344682377917L, 1683645361163952696L, 6834838492968575529L, 8172072261949960880L, -343672568155982171L, 8814527743318784619L, 4318976264077662943L, -2647245746285749036L, 1838059253346242035L, -5823437777518044519L, -3735422650258214544L, 2589006133027254055L, 3921193451477504334L, 4089385583297217089L, -1792724229942051689L, -5197592451417979505L, -6219981447336300843L}).toString(), reflectiveOperationException);
    }

    public static RuntimeException createExceptionForUnexpectedIllegalAccess(IllegalAccessException illegalAccessException) {
        throw new RuntimeException(new ObfuscatedString(new long[]{8300798801398218025L, 1824969485729422149L, 8663895322862572668L, 5815662466775076291L, 5865718675354283063L, 6468860185496617976L, 1050117778003166505L, -5764609626291564405L, -2012889848762103719L, 8995320750360377258L, 4216747189669507110L, 5687830638798940089L, 7461351667400164201L, -4160611559363819870L, -4649423320392300293L, -7746865767468181948L, -4279727561058146045L, -4059920799574775309L, 952877746823966351L, 6838234842983723382L, 3735369084100187266L, 162821268935848310L, -2766552039127549234L, -3344921611583306947L, -5498676558988145760L, -1117379844765446500L, 1405724978094545370L, -4284909869248344423L}).toString(), illegalAccessException);
    }

    public static String fieldToString(Field field) {
        return field.getDeclaringClass().getName() + new ObfuscatedString(new long[]{-2413937570732606904L, 7266243445842592717L}).toString() + field.getName();
    }

    public static String getAccessibleObjectDescription(AccessibleObject accessibleObject, boolean z) {
        String str;
        if (accessibleObject instanceof Field) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3828838759649126784L, -6081133803579542974L}).toString());
            sb.append(fieldToString((Field) accessibleObject));
            str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6939789704706376415L, 5162838650316933505L}), sb);
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb2 = new StringBuilder(method.getName());
            appendExecutableParameters(method, sb2);
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(new ObfuscatedString(new long[]{6493218653976028422L, 5627950221462312794L}).toString());
            sb4.append(method.getDeclaringClass().getName());
            sb4.append(new ObfuscatedString(new long[]{-5684771492257391538L, 8365738072821317899L}).toString());
            sb4.append(sb3);
            str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6996126107481117450L, 2542006434776404699L}), sb4);
        } else if (accessibleObject instanceof Constructor) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(new ObfuscatedString(new long[]{7745313015773094960L, 2330473287580424343L, -4855448739575332450L}).toString());
            sb5.append(constructorToString((Constructor) accessibleObject));
            str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7205182714058122500L, 1133504074480941395L}), sb5);
        } else {
            str = new ObfuscatedString(new long[]{-2242857092938839475L, -6138209385474887649L, 5914850200304389686L, 4151245292479034028L, -7310662573933793270L}).toString() + accessibleObject.toString();
        }
        if (z && Character.isLowerCase(str.charAt(0))) {
            return Character.toUpperCase(str.charAt(0)) + str.substring(1);
        }
        return str;
    }

    public static Method getAccessor(Class<?> cls, Field field) {
        return RECORD_HELPER.getAccessor(cls, field);
    }

    public static <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
        return RECORD_HELPER.getCanonicalRecordConstructor(cls);
    }

    private static String getInaccessibleTroubleshootingSuffix(Exception exc) {
        String obfuscatedString;
        if (exc.getClass().getName().equals(new ObfuscatedString(new long[]{4245424108291749594L, 1281721902809287712L, -5347817810707105229L, -7606291755224798919L, -955188973372927813L, 8417843512241380655L, 6307806406548607801L}).toString())) {
            String message = exc.getMessage();
            if (message != null && message.contains(new ObfuscatedString(new long[]{8226961144331950872L, 4500056175765932693L, -5111559524685570238L, -6617989978576042813L, -7958574421853414395L}).toString())) {
                obfuscatedString = new ObfuscatedString(new long[]{-5483022714726589101L, 7479253048317709238L, 3203846021111279205L, -5823010424829719642L, -6803258275470441578L, -3752373109377421584L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-8783956992667339733L, 3334650068225789725L, 7188351946748529328L, 6526085312200583806L}).toString();
            }
            return new ObfuscatedString(new long[]{8951012229479914300L, -3707088049342513559L}).toString() + TroubleshootingGuide.createUrl(obfuscatedString);
        }
        return new ObfuscatedString(new long[]{-2228936716996493182L}).toString();
    }

    public static String[] getRecordComponentNames(Class<?> cls) {
        return RECORD_HELPER.getRecordComponentNames(cls);
    }

    public static boolean isAnonymousOrNonStaticLocal(Class<?> cls) {
        if (!isStatic(cls) && (cls.isAnonymousClass() || cls.isLocalClass())) {
            return true;
        }
        return false;
    }

    public static boolean isRecord(Class<?> cls) {
        return RECORD_HELPER.isRecord(cls);
    }

    public static boolean isStatic(Class<?> cls) {
        return Modifier.isStatic(cls.getModifiers());
    }

    public static void makeAccessible(AccessibleObject accessibleObject) {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e) {
            throw new JsonIOException(new ObfuscatedString(new long[]{-879874952421484846L, 5039648919449334022L, -4925598248871753001L}).toString() + getAccessibleObjectDescription(accessibleObject, false) + new ObfuscatedString(new long[]{7668210098882569545L, -7745979452985877916L, 5404643939198975794L, 3469239875696006497L, -5957708207073660439L, -4266135285406529042L, -9146594408231695013L, 4995999620026681363L, -2648576302424660828L, 6753762770803251940L, -4119894302127701484L, 4938071005997248366L, -5303098358993653070L, -7144833471490646382L}).toString() + getInaccessibleTroubleshootingSuffix(e), e);
        }
    }

    public static String tryMakeAccessible(Constructor<?> constructor) {
        try {
            constructor.setAccessible(true);
            return null;
        } catch (Exception e) {
            return new ObfuscatedString(new long[]{5936388930591089480L, 1670860400923208346L, -2819384860916498786L, 77577660619081320L, -2785838454599338618L}).toString() + constructorToString(constructor) + new ObfuscatedString(new long[]{-7213687673016455019L, -2983604091314162131L, -5788584606197123012L, 288601112415195651L, 945172638339827785L, 8562081942151981831L, 1801824324972630150L, -3364603273719794011L, 7491189569427541157L, -910811243504031689L, 7349563829477098695L, -3999321423372137063L, 6245711711105548735L, -3875181516410895205L, -3231107749266288176L, 8979765854670838432L}).toString() + e.getMessage() + getInaccessibleTroubleshootingSuffix(e);
        }
    }
}
