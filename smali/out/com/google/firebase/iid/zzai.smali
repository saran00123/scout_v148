.class final Lcom/google/firebase/iid/zzai;
.super Lcom/google/firebase/iid/zzal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/iid/zzal<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    const/4 p2, 0x2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/iid/zzal;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method final zzab()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzb(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ack"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzal;->finish(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_e
    new-instance p1, Lcom/google/firebase/iid/zzak;

    const/4 v0, 0x4

    const-string v1, "Invalid response to one way request"

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/iid/zzak;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzak;)V

    return-void
.end method
