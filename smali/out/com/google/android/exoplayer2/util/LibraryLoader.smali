.class public final Lcom/google/android/exoplayer2/util/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibraryLoader"


# instance fields
.field private isAvailable:Z

.field private loadAttempted:Z

.field private nativeLibraries:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized isAvailable()Z
    .registers 6

    monitor-enter p0

    .line 51
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-eqz v0, :cond_9

    .line 52
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_43

    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x1

    .line 54
    :try_start_a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_43

    .line 56
    :try_start_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 57
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 59
    :cond_1a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1c} :catch_1d
    .catchall {:try_start_c .. :try_end_1c} :catchall_43

    goto :goto_3f

    :catch_1d
    :try_start_1d
    const-string v0, "LibraryLoader"

    const-string v1, "Failed to load "

    .line 63
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_36
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_3c
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_3f
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_43

    monitor-exit p0

    return v0

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setLibraries([Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 43
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 45
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
