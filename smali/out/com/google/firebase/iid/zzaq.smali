.class final synthetic Lcom/google/firebase/iid/zzaq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzcv:Lcom/google/firebase/iid/zzar;

.field private final zzcw:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzar;Landroid/util/Pair;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaq;->zzcv:Lcom/google/firebase/iid/zzar;

    iput-object p2, p0, Lcom/google/firebase/iid/zzaq;->zzcw:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/zzaq;->zzcv:Lcom/google/firebase/iid/zzar;

    iget-object v1, p0, Lcom/google/firebase/iid/zzaq;->zzcw:Landroid/util/Pair;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/iid/zzar;->zza(Landroid/util/Pair;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
