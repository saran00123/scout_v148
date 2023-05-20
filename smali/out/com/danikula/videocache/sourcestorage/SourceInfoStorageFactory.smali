.class public Lcom/danikula/videocache/sourcestorage/SourceInfoStorageFactory;
.super Ljava/lang/Object;
.source "SourceInfoStorageFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEmptySourceInfoStorage()Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;
    .registers 1

    .line 17
    new-instance v0, Lcom/danikula/videocache/sourcestorage/NoSourceInfoStorage;

    invoke-direct {v0}, Lcom/danikula/videocache/sourcestorage/NoSourceInfoStorage;-><init>()V

    return-object v0
.end method

.method public static newSourceInfoStorage(Landroid/content/Context;)Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;
    .registers 2

    .line 13
    new-instance v0, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
