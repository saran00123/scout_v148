.class public Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;
.super Ljava/lang/Object;


# instance fields
.field private final zaos:Landroid/util/SparseIntArray;

.field private zaot:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaot:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public getClientAvailability(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api$Client;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 12
    :cond_e
    invoke-interface {p2}, Lcom/google/android/gms/common/api/Api$Client;->getMinApkVersion()I

    move-result p2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1c

    return v0

    :cond_1c
    move v3, v1

    .line 16
    :goto_1d
    iget-object v4, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 17
    iget-object v4, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, p2, :cond_37

    .line 18
    iget-object v5, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_37

    move v0, v1

    goto :goto_3a

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3a
    :goto_3a
    if-ne v0, v2, :cond_42

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaot:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    .line 24
    :cond_42
    iget-object p1, p0, Lcom/google/android/gms/common/internal/GoogleApiAvailabilityCache;->zaos:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method
