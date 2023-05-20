.class final Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.kt"

# interfaces
.implements Lcom/stripe/android/EphemeralKeyUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/EphemeralKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientKeyUpdateListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;",
        "Lcom/stripe/android/EphemeralKeyUpdateListener;",
        "ephemeralKeyManager",
        "Lcom/stripe/android/EphemeralKeyManager;",
        "operation",
        "Lcom/stripe/android/EphemeralOperation;",
        "(Lcom/stripe/android/EphemeralKeyManager;Lcom/stripe/android/EphemeralOperation;)V",
        "onKeyUpdate",
        "",
        "stripeResponseJson",
        "",
        "onKeyUpdateFailure",
        "responseCode",
        "",
        "message",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final ephemeralKeyManager:Lcom/stripe/android/EphemeralKeyManager;

.field private final operation:Lcom/stripe/android/EphemeralOperation;


# direct methods
.method public constructor <init>(Lcom/stripe/android/EphemeralKeyManager;Lcom/stripe/android/EphemeralOperation;)V
    .registers 4
    .param p1    # Lcom/stripe/android/EphemeralKeyManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/EphemeralOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ephemeralKeyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;->ephemeralKeyManager:Lcom/stripe/android/EphemeralKeyManager;

    iput-object p2, p0, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;->operation:Lcom/stripe/android/EphemeralOperation;

    return-void
.end method


# virtual methods
.method public onKeyUpdate(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stripeResponseJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;->ephemeralKeyManager:Lcom/stripe/android/EphemeralKeyManager;

    iget-object v1, p0, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;->operation:Lcom/stripe/android/EphemeralOperation;

    invoke-static {v0, v1, p1}, Lcom/stripe/android/EphemeralKeyManager;->access$updateKey(Lcom/stripe/android/EphemeralKeyManager;Lcom/stripe/android/EphemeralOperation;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyUpdateFailure(ILjava/lang/String;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;->ephemeralKeyManager:Lcom/stripe/android/EphemeralKeyManager;

    iget-object v1, p0, Lcom/stripe/android/EphemeralKeyManager$ClientKeyUpdateListener;->operation:Lcom/stripe/android/EphemeralOperation;

    invoke-virtual {v1}, Lcom/stripe/android/EphemeralOperation;->getId$stripe_release()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/stripe/android/EphemeralKeyManager;->access$updateKeyError(Lcom/stripe/android/EphemeralKeyManager;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
