package com.google.common.eventbus;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.TypeToken;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.j2objc.annotations.Weak;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class SubscriberRegistry {

    @Weak
    private final EventBus bus;
    private final ConcurrentMap<Class<?>, CopyOnWriteArraySet<Subscriber>> subscribers = Maps.newConcurrentMap();
    private static final LoadingCache<Class<?>, ImmutableList<Method>> subscriberMethodsCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, ImmutableList<Method>>() { // from class: com.google.common.eventbus.SubscriberRegistry.1
        @Override // com.google.common.cache.CacheLoader
        public ImmutableList<Method> load(Class<?> cls) {
            return SubscriberRegistry.getAnnotatedMethodsNotCached(cls);
        }
    });
    private static final LoadingCache<Class<?>, ImmutableSet<Class<?>>> flattenHierarchyCache = CacheBuilder.newBuilder().weakKeys().build(new CacheLoader<Class<?>, ImmutableSet<Class<?>>>() { // from class: com.google.common.eventbus.SubscriberRegistry.2
        @Override // com.google.common.cache.CacheLoader
        public ImmutableSet<Class<?>> load(Class<?> cls) {
            return ImmutableSet.copyOf((Collection) TypeToken.of((Class) cls).getTypes().rawTypes());
        }
    });

    /* loaded from: classes2.dex */
    public static final class MethodIdentifier {
        private final String name;
        private final List<Class<?>> parameterTypes;

        public MethodIdentifier(Method method) {
            this.name = method.getName();
            this.parameterTypes = Arrays.asList(method.getParameterTypes());
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof MethodIdentifier)) {
                return false;
            }
            MethodIdentifier methodIdentifier = (MethodIdentifier) obj;
            if (!this.name.equals(methodIdentifier.name) || !this.parameterTypes.equals(methodIdentifier.parameterTypes)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hashCode(this.name, this.parameterTypes);
        }
    }

    public SubscriberRegistry(EventBus eventBus) {
        this.bus = (EventBus) Preconditions.checkNotNull(eventBus);
    }

    private Multimap<Class<?>, Subscriber> findAllSubscribers(Object obj) {
        HashMultimap create = HashMultimap.create();
        UnmodifiableIterator<Method> it = getAnnotatedMethods(obj.getClass()).iterator();
        while (it.hasNext()) {
            Method next = it.next();
            create.put(next.getParameterTypes()[0], Subscriber.create(this.bus, obj, next));
        }
        return create;
    }

    @VisibleForTesting
    public static ImmutableSet<Class<?>> flattenHierarchy(Class<?> cls) {
        try {
            return flattenHierarchyCache.getUnchecked(cls);
        } catch (UncheckedExecutionException e) {
            throw Throwables.propagate(e.getCause());
        }
    }

    private static ImmutableList<Method> getAnnotatedMethods(Class<?> cls) {
        try {
            return subscriberMethodsCache.getUnchecked(cls);
        } catch (UncheckedExecutionException e) {
            Throwables.throwIfUnchecked(e.getCause());
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<Method> getAnnotatedMethodsNotCached(Class<?> cls) {
        boolean z;
        Set rawTypes = TypeToken.of((Class) cls).getTypes().rawTypes();
        HashMap newHashMap = Maps.newHashMap();
        Iterator it = rawTypes.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (method.isAnnotationPresent(Subscribe.class) && !method.isSynthetic()) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.checkArgument(z, new ObfuscatedString(new long[]{4712001258813488262L, 7508032634350988838L, 7707843629407741466L, 1737971829420923783L, 8817104360801549574L, 8366933019036907543L, -1903066204629480376L, -7279839064795602054L, 4392588363696212528L, 3439444423882826180L, 8927907228992389396L, -2071050610481885822L, 3612305052701097029L, 1906457581866268679L, 4155606968009187136L}).toString(), (Object) method, parameterTypes.length);
                    Preconditions.checkArgument(!parameterTypes[0].isPrimitive(), new ObfuscatedString(new long[]{1451887096071957842L, 9167438909835474384L, -3045916960979356521L, -1737507489728826171L, -7029876735829153545L, -938413674930612024L, 1624718645404427508L, -7520920159381415010L, -6437539873684993323L, 2574676712598966963L, -7441915412856727912L, -3815103917203131927L, 4184922735530196756L, 7538322593850421750L, 4350450287383163620L, 892132988102628982L, 2423937655128623072L}).toString(), method, parameterTypes[0].getName(), Primitives.wrap(parameterTypes[0]).getSimpleName());
                    MethodIdentifier methodIdentifier = new MethodIdentifier(method);
                    if (!newHashMap.containsKey(methodIdentifier)) {
                        newHashMap.put(methodIdentifier, method);
                    }
                }
            }
        }
        return ImmutableList.copyOf(newHashMap.values());
    }

    public Iterator<Subscriber> getSubscribers(Object obj) {
        ImmutableSet<Class<?>> flattenHierarchy = flattenHierarchy(obj.getClass());
        ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(flattenHierarchy.size());
        UnmodifiableIterator<Class<?>> it = flattenHierarchy.iterator();
        while (it.hasNext()) {
            CopyOnWriteArraySet<Subscriber> copyOnWriteArraySet = this.subscribers.get(it.next());
            if (copyOnWriteArraySet != null) {
                newArrayListWithCapacity.add(copyOnWriteArraySet.iterator());
            }
        }
        return Iterators.concat(newArrayListWithCapacity.iterator());
    }

    @VisibleForTesting
    public Set<Subscriber> getSubscribersForTesting(Class<?> cls) {
        return (Set) MoreObjects.firstNonNull(this.subscribers.get(cls), ImmutableSet.of());
    }

    public void register(Object obj) {
        for (Map.Entry<Class<?>, Collection<Subscriber>> entry : findAllSubscribers(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<Subscriber> value = entry.getValue();
            CopyOnWriteArraySet<Subscriber> copyOnWriteArraySet = this.subscribers.get(key);
            if (copyOnWriteArraySet == null) {
                CopyOnWriteArraySet<Subscriber> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
                copyOnWriteArraySet = (CopyOnWriteArraySet) MoreObjects.firstNonNull(this.subscribers.putIfAbsent(key, copyOnWriteArraySet2), copyOnWriteArraySet2);
            }
            copyOnWriteArraySet.addAll(value);
        }
    }

    public void unregister(Object obj) {
        for (Map.Entry<Class<?>, Collection<Subscriber>> entry : findAllSubscribers(obj).asMap().entrySet()) {
            Class<?> key = entry.getKey();
            Collection<Subscriber> value = entry.getValue();
            CopyOnWriteArraySet<Subscriber> copyOnWriteArraySet = this.subscribers.get(key);
            if (copyOnWriteArraySet == null || !copyOnWriteArraySet.removeAll(value)) {
                String valueOf = String.valueOf(obj);
                StringBuilder sb = new StringBuilder(valueOf.length() + 65);
                sb.append(new ObfuscatedString(new long[]{913929483523749898L, 7687746105804957975L, -8312165092004580734L, -8779719837562076208L, 7845847524496767088L, 2970451110128077255L, -5420837745945334724L, 5867008268807432644L}).toString());
                sb.append(valueOf);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8169427347893531555L, 8019847138019764330L, -1496042143106427794L}), sb));
            }
        }
    }
}
