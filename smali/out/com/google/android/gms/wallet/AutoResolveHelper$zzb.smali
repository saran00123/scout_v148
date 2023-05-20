.class final Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/AutoResolveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult::",
        "Lcom/google/android/gms/wallet/AutoResolvableResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "TTResult;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final zzad:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final zzae:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/wallet/AutoResolveHelper$zzb<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final zzaf:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field zzag:I

.field private zzah:Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

.field private zzai:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzi;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wallet/zzi;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzad:Landroid/os/Handler;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzae:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzaf:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult::",
            "Lcom/google/android/gms/wallet/AutoResolvableResult;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)",
            "Lcom/google/android/gms/wallet/AutoResolveHelper$zzb<",
            "TTResult;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;-><init>()V

    .line 3
    sget-object v1, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzaf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzag:I

    .line 4
    sget-object v1, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzae:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzag:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzad:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zzb()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method private final zzd()V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzai:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzah:Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

    if-eqz v0, :cond_1b

    .line 20
    sget-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzae:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzag:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 21
    sget-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzad:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzah:Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

    iget-object v1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzai:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1}, Lcom/google/android/gms/wallet/AutoResolveHelper$zza;->zza(Lcom/google/android/gms/wallet/AutoResolveHelper$zza;Lcom/google/android/gms/tasks/Task;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzai:Lcom/google/android/gms/tasks/Task;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzd()V

    return-void
.end method

.method public final run()V
    .registers 3

    .line 17
    sget-object v0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzae:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzag:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/wallet/AutoResolveHelper$zza;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzah:Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzd()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/wallet/AutoResolveHelper$zza;)V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzah:Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/wallet/AutoResolveHelper$zzb;->zzah:Lcom/google/android/gms/wallet/AutoResolveHelper$zza;

    :cond_7
    return-void
.end method
