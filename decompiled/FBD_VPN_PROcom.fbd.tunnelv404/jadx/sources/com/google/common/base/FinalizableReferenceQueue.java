package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtIncompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class FinalizableReferenceQueue implements Closeable {
    private static final String FINALIZER_CLASS_NAME = new ObfuscatedString(new long[]{-6183905634742912322L, 4465792540515800167L, -1984370678809389667L, 3155975748104514565L, 7999619253902613074L, -2758572893994385612L, 969787621933406858L}).toString();
    private static final Logger logger = Logger.getLogger(FinalizableReferenceQueue.class.getName());
    private static final Method startFinalizer = getStartFinalizer(loadFinalizer(new SystemLoader(), new DecoupledLoader(), new DirectLoader()));
    final PhantomReference<Object> frqRef;
    final ReferenceQueue<Object> queue;
    final boolean threadStarted;

    /* loaded from: classes2.dex */
    public static class DecoupledLoader implements FinalizerLoader {
        private static final String LOADING_ERROR = new ObfuscatedString(new long[]{6433342006682404030L, -659819517687227604L, 7476767093219988302L, -1331952087919297163L, -1522917056439101286L, 4274215571931432496L, -7479998474079075613L, -96554336420961535L, -3279799322528657488L, -5862486019270622991L, -2140070611111505506L, 2392215363692030369L, 8757986875343760437L, -1904055085041265631L, -7651490613644150804L, -6170686439807951496L, 3498308427154469480L, -5235061351083432339L, 6574244564632961224L, -2031664065468973259L, 7661423855761410656L, 89503258608985565L, -262120750395650331L, -7723017341086600806L, -4661244564714269540L, 1004137566937903376L, -7217027686375039807L, -678581902413939582L, -2471596791313107590L, -1166142379570624001L, -1921216217810228641L, 738216028456245807L, -6878295128231710009L, -227234759949526843L, 8420059254512851423L, 6248687209130144259L, 5680127971809719187L, 2948033406956996660L}).toString();

        public URL getBaseUrl() {
            String str;
            String concat = String.valueOf(new ObfuscatedString(new long[]{6923236769522274950L, -8446498915082523350L, -2106434691266934124L, 181401037966784174L, -4350161404818736695L, -5444665272453430815L, -7592073757373902722L}).toString().replace('.', '/')).concat(new ObfuscatedString(new long[]{930109071714011104L, -7699246866764186642L}).toString());
            URL resource = getClass().getClassLoader().getResource(concat);
            if (resource != null) {
                String url = resource.toString();
                if (!url.endsWith(concat)) {
                    String obfuscatedString = new ObfuscatedString(new long[]{7642814523002489516L, -6138003782265050483L, -4381553152180848875L, -2381457067317136982L}).toString();
                    if (url.length() != 0) {
                        str = obfuscatedString.concat(url);
                    } else {
                        str = new String(obfuscatedString);
                    }
                    throw new IOException(str);
                }
                return new URL(resource, url.substring(0, url.length() - concat.length()));
            }
            throw new FileNotFoundException(concat);
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        @CheckForNull
        public Class<?> loadFinalizer() {
            try {
                return newLoader(getBaseUrl()).loadClass(new ObfuscatedString(new long[]{-7218873387643395960L, -4623771909254195406L, -6171343141991125302L, 507514239716150229L, 6441664190386697081L, 7721833738458709775L, 8003513844430515558L}).toString());
            } catch (Exception e) {
                FinalizableReferenceQueue.logger.log(Level.WARNING, new ObfuscatedString(new long[]{9207602268097394494L, -1464566818412656427L, -8459988698212925518L, 969611284788435296L, -1070546571895125136L, -5296056225812111942L, -4213725290348207228L, -7799920970293440329L, 6079676367333278937L, -11556847248313343L, 4910936230561245468L, -7872701477611672303L, 8509864911459579911L, -134242072953794955L, -7652366362557139974L, -2386209404957494401L, -5005847672398642944L, -5976705886444255220L, -4402578888612778864L, 1310382457983224465L, -8979740364976563608L, 6488078831683848423L, -7164861990156395455L, 5840144330831076699L, 6999014519333534795L, -4879409162125186676L, -2570461099983946836L, 886880712790223570L, -7563451310132264010L, -5547666304413213114L, -3775143086407120206L, -2483502177605651818L, -6582904101558281354L, 8382297632530495622L, -3955543485285882598L, 7030906273804449308L, 8298446873046690452L, -8712945373616895152L}).toString(), (Throwable) e);
                return null;
            }
        }

        public URLClassLoader newLoader(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    /* loaded from: classes2.dex */
    public static class DirectLoader implements FinalizerLoader {
        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public Class<?> loadFinalizer() {
            try {
                return Class.forName(new ObfuscatedString(new long[]{-3746271864201170594L, -5357163484869499897L, -7137860073517902463L, 8240248638410559755L, 2140016653890637326L, 1523944751695000938L, -2294423243428203483L}).toString());
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface FinalizerLoader {
        @CheckForNull
        Class<?> loadFinalizer();
    }

    /* loaded from: classes2.dex */
    public static class SystemLoader implements FinalizerLoader {

        @VisibleForTesting
        static boolean disabled;

        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        @CheckForNull
        public Class<?> loadFinalizer() {
            if (disabled) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader != null) {
                    try {
                        return systemClassLoader.loadClass(new ObfuscatedString(new long[]{2814234853679498615L, -5489914170620486274L, -8412959229231636655L, -8052121415273352295L, -514307242306160244L, -6648929751777335110L, 1499840417022418492L}).toString());
                    } catch (ClassNotFoundException unused) {
                    }
                }
                return null;
            } catch (SecurityException unused2) {
                FinalizableReferenceQueue.logger.info(new ObfuscatedString(new long[]{5778431507251651946L, -265736291949895777L, -1631483326268935957L, -6844859528091993372L, -6362130009625200080L, 5148715898059472024L, -5111367985778996585L}).toString());
                return null;
            }
        }
    }

    public FinalizableReferenceQueue() {
        boolean z = true;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.queue = referenceQueue;
        PhantomReference<Object> phantomReference = new PhantomReference<>(this, referenceQueue);
        this.frqRef = phantomReference;
        try {
            startFinalizer.invoke(null, FinalizableReference.class, referenceQueue, phantomReference);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (Throwable th) {
            logger.log(Level.INFO, new ObfuscatedString(new long[]{6594753471430509595L, -7713686172148264515L, 3202579821819038648L, 7825310667720981811L, 3654310411610150246L, -3509480869263033536L, -1114982595525869063L, 6443218749479606853L, -6757987381081090576L, 6385174079831287772L, -319294947571981004L, -8491036243006541791L, -6936983188498769363L, 2799018839941746061L, -3256979465773007935L}).toString(), th);
            z = false;
        }
        this.threadStarted = z;
    }

    public static Method getStartFinalizer(Class<?> cls) {
        try {
            return cls.getMethod(new ObfuscatedString(new long[]{-3840884683979808082L, -7776843512879008820L, 210372160922316242L}).toString(), Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e) {
            throw new AssertionError(e);
        }
    }

    private static Class<?> loadFinalizer(FinalizerLoader... finalizerLoaderArr) {
        for (FinalizerLoader finalizerLoader : finalizerLoaderArr) {
            Class<?> loadFinalizer = finalizerLoader.loadFinalizer();
            if (loadFinalizer != null) {
                return loadFinalizer;
            }
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void cleanUp() {
        if (this.threadStarted) {
            return;
        }
        while (true) {
            Reference<? extends Object> poll = this.queue.poll();
            if (poll != 0) {
                poll.clear();
                try {
                    ((FinalizableReference) poll).finalizeReferent();
                } catch (Throwable th) {
                    logger.log(Level.SEVERE, new ObfuscatedString(new long[]{-6664427730835284075L, -8915325577989465748L, 5974707455847889390L, 4118174588346702009L, -2462035176454592151L, 8027795449565707030L}).toString(), th);
                }
            } else {
                return;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.frqRef.enqueue();
        cleanUp();
    }
}
