.class final Lj$/util/k;
.super Lj$/util/g;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x6c3c27902eedf3cL


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1188
    :cond_0
    iget-object v0, p0, Lj$/util/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lj$/util/g;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1190
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1194
    iget-object v0, p0, Lj$/util/g;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lj$/util/g;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
