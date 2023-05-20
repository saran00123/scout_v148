.class final synthetic Lcom/google/firebase/messaging/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzee:Lcom/google/firebase/messaging/zze;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/zze;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/zzd;->zzee:Lcom/google/firebase/messaging/zze;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/messaging/zzd;->zzee:Lcom/google/firebase/messaging/zze;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/zze;->zzat()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
