.class Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;,
        Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;,
        Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;
    }
.end annotation


# static fields
.field static final FILE_NAME_ATOMIC:Ljava/lang/String; = "cached_content_index.exi"

.field private static final INCREMENTAL_METADATA_READ_LENGTH:I = 0xa00000


# instance fields
.field private final idToKey:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final newIds:Landroid/util/SparseBooleanArray;

.field private previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final removedIds:Landroid/util/SparseBooleanArray;

.field private storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/io/File;[BZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;Ljava/io/File;[BZZ)V
    .registers 9
    .param p1    # Lcom/google/android/exoplayer2/database/DatabaseProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 163
    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    .line 166
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    .line 167
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    .line 170
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    goto :goto_34

    :cond_33
    move-object v1, v0

    :goto_34
    if-eqz p2, :cond_42

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;

    new-instance p1, Ljava/io/File;

    const-string v2, "cached_content_index.exi"

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;-><init>(Ljava/io/File;[BZ)V

    :cond_42
    if-eqz v1, :cond_4e

    if-eqz v0, :cond_49

    if-eqz p5, :cond_49

    goto :goto_4e

    .line 183
    :cond_49
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    .line 184
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    goto :goto_58

    .line 180
    :cond_4e
    :goto_4e
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    .line 181
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    :goto_58
    return-void
.end method

.method static synthetic access$000()Ljavax/crypto/Cipher;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->readContentMetadata(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->writeContentMetadata(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private addNew(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getNewId(Landroid/util/SparseArray;)I

    move-result v0

    .line 340
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 344
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    return-object v1
.end method

.method public static delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;J)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 125
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$DatabaseStorage;->delete(Lcom/google/android/exoplayer2/database/DatabaseProvider;J)V

    return-void
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 351
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const-string v1, "AES/CBC/PKCS5PADDING"

    const/16 v2, 0x12

    if-ne v0, v2, :cond_f

    :try_start_8
    const-string v0, "BC"

    .line 353
    invoke-static {v1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 358
    :catch_f
    :cond_f
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static getNewId(Landroid/util/SparseArray;)I
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move v2, v1

    goto :goto_11

    :cond_9
    add-int/lit8 v2, v0, -0x1

    .line 369
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_11
    if-gez v2, :cond_20

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_20

    .line 373
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eq v2, v1, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_20
    :goto_20
    return v2
.end method

.method public static isIndexFile(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "cached_content_index.exi"

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static readContentMetadata(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 391
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_53

    .line 393
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_3a

    const/high16 v6, 0xa00000

    .line 402
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 403
    sget-object v8, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    move v9, v7

    move v7, v2

    :goto_21
    if-eq v7, v5, :cond_34

    add-int v10, v7, v9

    .line 405
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 406
    invoke-virtual {p0, v8, v7, v9}, Ljava/io/DataInputStream;->readFully([BII)V

    sub-int v7, v5, v10

    .line 408
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v7, v10

    goto :goto_21

    .line 410
    :cond_34
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 396
    :cond_3a
    new-instance p0, Ljava/io/IOException;

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid value size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_53
    new-instance p0, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private static writeContentMetadata(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 424
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 425
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 428
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 429
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_f

    :cond_32
    return-void
.end method


# virtual methods
.method public applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .registers 3

    .line 326
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    .line 327
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->applyMetadataMutations(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 328
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V

    :cond_f
    return-void
.end method

.method public assignIdForKey(Ljava/lang/String;)I
    .registers 2

    .line 269
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    return p1
.end method

.method public get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    return-object p1
.end method

.method public getAll()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;
    .registers 2

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 335
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    :goto_d
    return-object p1
.end method

.method public getKeyForId(I)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    if-nez v0, :cond_e

    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->addNew(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public initialize(J)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->initialize(J)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    if-eqz v0, :cond_c

    .line 200
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->initialize(J)V

    .line 202
    :cond_c
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->exists()Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->exists()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 204
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->load(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 205
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->storeFully(Ljava/util/HashMap;)V

    goto :goto_38

    .line 208
    :cond_2f
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->load(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 210
    :goto_38
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    if-eqz p1, :cond_42

    .line 211
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->delete()V

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->previousStorage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    :cond_42
    return-void
.end method

.method public maybeRemove(Ljava/lang/String;)V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    if-eqz v0, :cond_41

    .line 285
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isFullyUnlocked()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 286
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    .line 288
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->onRemove(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V

    if-eqz v1, :cond_35

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_41

    .line 297
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_41
    :goto_41
    return-void
.end method

.method public removeEmpty()V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public store()V
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->storage:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->keyToContent:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;->storeIncremental(Ljava/util/HashMap;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 229
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->idToKey:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 231
    :cond_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->newIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method
