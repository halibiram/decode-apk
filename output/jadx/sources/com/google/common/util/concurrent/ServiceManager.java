package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.base.Stopwatch;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Ordering;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.ListenerCallQueue;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class ServiceManager implements ServiceManagerBridge {
    private final ImmutableList<Service> services;
    private final ServiceManagerState state;
    private static final Logger logger = Logger.getLogger(ServiceManager.class.getName());
    private static final ListenerCallQueue.Event<Listener> HEALTHY_EVENT = new ListenerCallQueue.Event<Listener>() { // from class: com.google.common.util.concurrent.ServiceManager.1
        public String toString() {
            return new ObfuscatedString(new long[]{5223642689966593647L, 4954661706318520952L, -7000328772118863830L}).toString();
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        public void call(Listener listener) {
            listener.healthy();
        }
    };
    private static final ListenerCallQueue.Event<Listener> STOPPED_EVENT = new ListenerCallQueue.Event<Listener>() { // from class: com.google.common.util.concurrent.ServiceManager.2
        public String toString() {
            return new ObfuscatedString(new long[]{-5492203182711348741L, -6237637326678645098L, 8519594696314012115L}).toString();
        }

        @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
        public void call(Listener listener) {
            listener.stopped();
        }
    };

    /* loaded from: classes2.dex */
    public static final class EmptyServiceManagerWarning extends Throwable {
        private EmptyServiceManagerWarning() {
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Listener {
        public void failure(Service service) {
        }

        public void healthy() {
        }

        public void stopped() {
        }
    }

    /* loaded from: classes2.dex */
    public static final class NoOpService extends AbstractService {
        private NoOpService() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStart() {
            notifyStarted();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStop() {
            notifyStopped();
        }
    }

    /* loaded from: classes2.dex */
    public static final class ServiceListener extends Service.Listener {
        final Service service;
        final WeakReference<ServiceManagerState> state;

        public ServiceListener(Service service, WeakReference<ServiceManagerState> weakReference) {
            this.service = service;
            this.state = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                if (!(this.service instanceof NoOpService)) {
                    Logger logger = ServiceManager.logger;
                    Level level = Level.SEVERE;
                    String valueOf = String.valueOf(this.service);
                    String valueOf2 = String.valueOf(state);
                    StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 34);
                    sb.append(new ObfuscatedString(new long[]{1310805641940405290L, 4097946403879664776L}).toString());
                    sb.append(valueOf);
                    sb.append(new ObfuscatedString(new long[]{-747246813481281235L, 5843504889761572195L, 5815030327863398032L, 5350705211276886707L}).toString());
                    sb.append(valueOf2);
                    sb.append(new ObfuscatedString(new long[]{-647683833662451101L, -3376194704465079859L}).toString());
                    logger.log(level, sb.toString(), th);
                }
                serviceManagerState.transitionService(this.service, state, Service.State.FAILED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void running() {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                serviceManagerState.transitionService(this.service, Service.State.STARTING, Service.State.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void starting() {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                serviceManagerState.transitionService(this.service, Service.State.NEW, Service.State.STARTING);
                if (!(this.service instanceof NoOpService)) {
                    ServiceManager.logger.log(Level.FINE, new ObfuscatedString(new long[]{-3969804962876570299L, 1297723389285461676L, 468188936223596950L}).toString(), this.service);
                }
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void stopping(Service.State state) {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                serviceManagerState.transitionService(this.service, state, Service.State.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) {
            ServiceManagerState serviceManagerState = this.state.get();
            if (serviceManagerState != null) {
                if (!(this.service instanceof NoOpService)) {
                    ServiceManager.logger.log(Level.FINE, new ObfuscatedString(new long[]{-1200005729420872551L, -6160657567056341711L, 2285149135393152129L, 5276157145796953511L, -8035489938018839937L, 8817708350384704527L, 2111354558367153068L, -7963961050247385659L}).toString(), new Object[]{this.service, state});
                }
                serviceManagerState.transitionService(this.service, state, Service.State.TERMINATED);
            }
        }
    }

    public ServiceManager(Iterable<? extends Service> iterable) {
        boolean z;
        ImmutableList<Service> copyOf = ImmutableList.copyOf(iterable);
        if (copyOf.isEmpty()) {
            logger.log(Level.WARNING, new ObfuscatedString(new long[]{-6345396891225664471L, 5455622666887992394L, 8613324292150797778L, 893017498258470080L, 4434599343468838510L, -1029150556834201703L, -1777999318025963987L, 4356459314446905828L, -778470476424889405L, 3195208460097836887L, 9154312900124563838L, 8877420630944073016L}).toString(), (Throwable) new EmptyServiceManagerWarning());
            copyOf = ImmutableList.of(new NoOpService());
        }
        ServiceManagerState serviceManagerState = new ServiceManagerState(copyOf);
        this.state = serviceManagerState;
        this.services = copyOf;
        WeakReference weakReference = new WeakReference(serviceManagerState);
        UnmodifiableIterator<Service> it = copyOf.iterator();
        while (it.hasNext()) {
            Service next = it.next();
            next.addListener(new ServiceListener(next, weakReference), MoreExecutors.directExecutor());
            if (next.state() == Service.State.NEW) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-379837539766064494L, -7624909487034234130L, 2762824460257270334L, 5918749880256617740L, -7622373249539249591L}).toString(), next);
        }
        this.state.markReady();
    }

    public void addListener(Listener listener, Executor executor) {
        this.state.addListener(listener, executor);
    }

    public void awaitHealthy() {
        this.state.awaitHealthy();
    }

    public void awaitStopped() {
        this.state.awaitStopped();
    }

    public boolean isHealthy() {
        UnmodifiableIterator<Service> it = this.services.iterator();
        while (it.hasNext()) {
            if (!it.next().isRunning()) {
                return false;
            }
        }
        return true;
    }

    @CanIgnoreReturnValue
    public ServiceManager startAsync() {
        boolean z;
        UnmodifiableIterator<Service> it = this.services.iterator();
        while (it.hasNext()) {
            if (it.next().state() == Service.State.NEW) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-6515114219339020948L, 33090467374132805L, 5737937204655684592L, 5047821602433550510L, 8194673339014469925L, -930597245554859504L, 1186800103626649662L}).toString(), this);
        }
        UnmodifiableIterator<Service> it2 = this.services.iterator();
        while (it2.hasNext()) {
            Service next = it2.next();
            try {
                this.state.tryStartTiming(next);
                next.startAsync();
            } catch (IllegalStateException e) {
                Logger logger2 = logger;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(next);
                logger2.log(level, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2317033072497215778L, -2660176820368525668L, 4382664425900643515L, 9203074280156482185L}), new StringBuilder(valueOf.length() + 24), valueOf), (Throwable) e);
            }
        }
        return this;
    }

    public ImmutableMap<Service, Long> startupTimes() {
        return this.state.startupTimes();
    }

    @CanIgnoreReturnValue
    public ServiceManager stopAsync() {
        UnmodifiableIterator<Service> it = this.services.iterator();
        while (it.hasNext()) {
            it.next().stopAsync();
        }
        return this;
    }

    public String toString() {
        return MoreObjects.toStringHelper((Class<?>) ServiceManager.class).add(new ObfuscatedString(new long[]{-2327545654461762465L, 1703533105253351579L}).toString(), Collections2.filter(this.services, Predicates.not(Predicates.instanceOf(NoOpService.class)))).toString();
    }

    /* loaded from: classes2.dex */
    public static final class ServiceManagerState {
        final Monitor.Guard awaitHealthGuard;
        final ListenerCallQueue<Listener> listeners;
        final Monitor monitor = new Monitor();
        final int numberOfServices;

        @GuardedBy("monitor")
        boolean ready;

        @GuardedBy("monitor")
        final SetMultimap<Service.State, Service> servicesByState;

        @GuardedBy("monitor")
        final Map<Service, Stopwatch> startupTimers;

        @GuardedBy("monitor")
        final Multiset<Service.State> states;
        final Monitor.Guard stoppedGuard;

        @GuardedBy("monitor")
        boolean transitioned;

        /* loaded from: classes2.dex */
        public final class AwaitHealthGuard extends Monitor.Guard {
            public AwaitHealthGuard() {
                super(ServiceManagerState.this.monitor);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean isSatisfied() {
                int count = ServiceManagerState.this.states.count(Service.State.RUNNING);
                ServiceManagerState serviceManagerState = ServiceManagerState.this;
                if (count != serviceManagerState.numberOfServices && !serviceManagerState.states.contains(Service.State.STOPPING) && !ServiceManagerState.this.states.contains(Service.State.TERMINATED) && !ServiceManagerState.this.states.contains(Service.State.FAILED)) {
                    return false;
                }
                return true;
            }
        }

        /* loaded from: classes2.dex */
        public final class StoppedGuard extends Monitor.Guard {
            public StoppedGuard() {
                super(ServiceManagerState.this.monitor);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean isSatisfied() {
                if (ServiceManagerState.this.states.count(Service.State.FAILED) + ServiceManagerState.this.states.count(Service.State.TERMINATED) == ServiceManagerState.this.numberOfServices) {
                    return true;
                }
                return false;
            }
        }

        public ServiceManagerState(ImmutableCollection<Service> immutableCollection) {
            SetMultimap<Service.State, Service> build = MultimapBuilder.enumKeys(Service.State.class).linkedHashSetValues().build();
            this.servicesByState = build;
            this.states = build.keys();
            this.startupTimers = Maps.newIdentityHashMap();
            this.awaitHealthGuard = new AwaitHealthGuard();
            this.stoppedGuard = new StoppedGuard();
            this.listeners = new ListenerCallQueue<>();
            this.numberOfServices = immutableCollection.size();
            build.putAll(Service.State.NEW, immutableCollection);
        }

        public void addListener(Listener listener, Executor executor) {
            this.listeners.addListener(listener, executor);
        }

        public void awaitHealthy() {
            this.monitor.enterWhenUninterruptibly(this.awaitHealthGuard);
            try {
                checkHealthy();
            } finally {
                this.monitor.leave();
            }
        }

        public void awaitStopped() {
            this.monitor.enterWhenUninterruptibly(this.stoppedGuard);
            this.monitor.leave();
        }

        @GuardedBy("monitor")
        public void checkHealthy() {
            Multiset<Service.State> multiset = this.states;
            Service.State state = Service.State.RUNNING;
            if (multiset.count(state) == this.numberOfServices) {
                return;
            }
            String valueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.servicesByState, Predicates.not(Predicates.equalTo(state))));
            throw new IllegalStateException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-8491681992013703411L, 5399333264680501798L, 3811621868934211956L, 6277974858167123128L, 3390411351048195751L, -1836375474564396916L, -8950445229836809644L, -6759647036981213923L, 488895171614093832L, 983363970146059265L, 6362863857986077893L}), new StringBuilder(valueOf.length() + 79), valueOf));
        }

        public void dispatchListenerEvents() {
            Preconditions.checkState(!this.monitor.isOccupiedByCurrentThread(), new ObfuscatedString(new long[]{-6908266748077329389L, 5498008327727378359L, 8106989508681149283L, 8634094794636822000L, 256699523549835477L, 3634458813800337168L, 8333932857224542018L, -5404189655520078733L, 8440519557249900384L}).toString());
            this.listeners.dispatch();
        }

        public void enqueueFailedEvent(final Service service) {
            this.listeners.enqueue(new ListenerCallQueue.Event<Listener>(this) { // from class: com.google.common.util.concurrent.ServiceManager.ServiceManagerState.2
                public String toString() {
                    String valueOf = String.valueOf(service);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                    sb.append(new ObfuscatedString(new long[]{2152669314906175724L, 7060223363142543384L, 7131370780279832634L}).toString());
                    sb.append(valueOf);
                    return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6887576541846105756L, -8449174178649433043L}), sb);
                }

                @Override // com.google.common.util.concurrent.ListenerCallQueue.Event
                public void call(Listener listener) {
                    listener.failure(service);
                }
            });
        }

        public void enqueueHealthyEvent() {
            this.listeners.enqueue(ServiceManager.HEALTHY_EVENT);
        }

        public void enqueueStoppedEvent() {
            this.listeners.enqueue(ServiceManager.STOPPED_EVENT);
        }

        public void markReady() {
            this.monitor.enter();
            try {
                if (!this.transitioned) {
                    this.ready = true;
                    return;
                }
                ArrayList newArrayList = Lists.newArrayList();
                UnmodifiableIterator<Service> it = servicesByState().values().iterator();
                while (it.hasNext()) {
                    Service next = it.next();
                    if (next.state() != Service.State.NEW) {
                        newArrayList.add(next);
                    }
                }
                String valueOf = String.valueOf(newArrayList);
                StringBuilder sb = new StringBuilder(valueOf.length() + 89);
                sb.append(new ObfuscatedString(new long[]{-8605606744288940035L, 5176463641849582513L, -4169351197846505787L, 9070990937868578243L, -6313751819314759862L, 737546420942146402L, 2133400837740275531L, -2303415770753472547L, 8840169850858721254L, -5330402337949308109L, -4395962933378872566L, 286402082719217566L, -3303660869736476483L}).toString());
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            } finally {
                this.monitor.leave();
            }
        }

        public ImmutableSetMultimap<Service.State, Service> servicesByState() {
            ImmutableSetMultimap.Builder builder = ImmutableSetMultimap.builder();
            this.monitor.enter();
            try {
                for (Map.Entry<Service.State, Service> entry : this.servicesByState.entries()) {
                    if (!(entry.getValue() instanceof NoOpService)) {
                        builder.put((Map.Entry) entry);
                    }
                }
                this.monitor.leave();
                return builder.build();
            } catch (Throwable th) {
                this.monitor.leave();
                throw th;
            }
        }

        public ImmutableMap<Service, Long> startupTimes() {
            this.monitor.enter();
            try {
                ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(this.startupTimers.size());
                for (Map.Entry<Service, Stopwatch> entry : this.startupTimers.entrySet()) {
                    Service key = entry.getKey();
                    Stopwatch value = entry.getValue();
                    if (!value.isRunning() && !(key instanceof NoOpService)) {
                        newArrayListWithCapacity.add(Maps.immutableEntry(key, Long.valueOf(value.elapsed(TimeUnit.MILLISECONDS))));
                    }
                }
                this.monitor.leave();
                Collections.sort(newArrayListWithCapacity, Ordering.natural().onResultOf(new Function<Map.Entry<Service, Long>, Long>(this) { // from class: com.google.common.util.concurrent.ServiceManager.ServiceManagerState.1
                    @Override // com.google.common.base.Function
                    public Long apply(Map.Entry<Service, Long> entry2) {
                        return entry2.getValue();
                    }
                }));
                return ImmutableMap.copyOf(newArrayListWithCapacity);
            } catch (Throwable th) {
                this.monitor.leave();
                throw th;
            }
        }

        public void transitionService(Service service, Service.State state, Service.State state2) {
            boolean z;
            Preconditions.checkNotNull(service);
            if (state != state2) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.monitor.enter();
            try {
                this.transitioned = true;
                if (!this.ready) {
                    this.monitor.leave();
                    dispatchListenerEvents();
                    return;
                }
                Preconditions.checkState(this.servicesByState.remove(state, service), new ObfuscatedString(new long[]{7027600565668258716L, 6256579826779567628L, -4612337940804371345L, -475217938658128646L, 7992085985485792362L, 3281511471770108955L, 8735873416579789268L, -6879070623674624315L, -5697104724166002173L}).toString(), service, state);
                Preconditions.checkState(this.servicesByState.put(state2, service), new ObfuscatedString(new long[]{1495711515769835355L, 4201264544714934202L, 4939471281290758530L, 5932533955999690166L, -8661916506105248718L, -3153205363921651733L, -5608507332826030725L}).toString(), service, state2);
                Stopwatch stopwatch = this.startupTimers.get(service);
                if (stopwatch == null) {
                    stopwatch = Stopwatch.createStarted();
                    this.startupTimers.put(service, stopwatch);
                }
                Service.State state3 = Service.State.RUNNING;
                if (state2.compareTo(state3) >= 0 && stopwatch.isRunning()) {
                    stopwatch.stop();
                    if (!(service instanceof NoOpService)) {
                        ServiceManager.logger.log(Level.FINE, new ObfuscatedString(new long[]{-9146756527211793292L, -440089882096464872L, -3338951380619525149L, 7985207716977495940L}).toString(), new Object[]{service, stopwatch});
                    }
                }
                Service.State state4 = Service.State.FAILED;
                if (state2 == state4) {
                    enqueueFailedEvent(service);
                }
                if (this.states.count(state3) == this.numberOfServices) {
                    enqueueHealthyEvent();
                } else if (this.states.count(Service.State.TERMINATED) + this.states.count(state4) == this.numberOfServices) {
                    enqueueStoppedEvent();
                }
                this.monitor.leave();
                dispatchListenerEvents();
            } catch (Throwable th) {
                this.monitor.leave();
                dispatchListenerEvents();
                throw th;
            }
        }

        public void tryStartTiming(Service service) {
            this.monitor.enter();
            try {
                if (this.startupTimers.get(service) == null) {
                    this.startupTimers.put(service, Stopwatch.createStarted());
                }
            } finally {
                this.monitor.leave();
            }
        }

        public void awaitStopped(long j, TimeUnit timeUnit) {
            this.monitor.enter();
            try {
                if (this.monitor.waitForUninterruptibly(this.stoppedGuard, j, timeUnit)) {
                    return;
                }
                String valueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.servicesByState, Predicates.not(Predicates.in(EnumSet.of(Service.State.TERMINATED, Service.State.FAILED)))));
                StringBuilder sb = new StringBuilder(valueOf.length() + 83);
                sb.append(new ObfuscatedString(new long[]{-5036615873009126943L, -8411504114300111951L, 4086339656922421422L, 4277929260848931287L, 7496206228156099803L, -1472400911022335553L, -1150500564488793327L, -1654693979670404708L, 1592023297865745751L, -8814720129283176786L, 8718554779978182214L, -7932054147871156976L}).toString());
                sb.append(valueOf);
                throw new TimeoutException(sb.toString());
            } finally {
                this.monitor.leave();
            }
        }

        public void awaitHealthy(long j, TimeUnit timeUnit) {
            this.monitor.enter();
            try {
                if (this.monitor.waitForUninterruptibly(this.awaitHealthGuard, j, timeUnit)) {
                    checkHealthy();
                    return;
                }
                String valueOf = String.valueOf(Multimaps.filterKeys((SetMultimap) this.servicesByState, Predicates.in(ImmutableSet.of(Service.State.NEW, Service.State.STARTING))));
                StringBuilder sb = new StringBuilder(valueOf.length() + 93);
                sb.append(new ObfuscatedString(new long[]{-6502070802549799017L, 661956375206218613L, -1272320384020614816L, -3383904859589211947L, -2145199983938603416L, -8615904838793523844L, -5628866194964631723L, 4871696003376073724L, 595703797163433720L, -5009983750003685511L, -649072562808856837L, -8621782046123321301L, -2991987101059242009L}).toString());
                sb.append(valueOf);
                throw new TimeoutException(sb.toString());
            } finally {
                this.monitor.leave();
            }
        }
    }

    public void awaitHealthy(long j, TimeUnit timeUnit) {
        this.state.awaitHealthy(j, timeUnit);
    }

    public void awaitStopped(long j, TimeUnit timeUnit) {
        this.state.awaitStopped(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.ServiceManagerBridge
    public ImmutableSetMultimap<Service.State, Service> servicesByState() {
        return this.state.servicesByState();
    }
}
