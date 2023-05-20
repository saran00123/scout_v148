.class public Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001e\u0010\u001fB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u001e\u0010 J-\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\r\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ%\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J%\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;",
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;",
        "Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;",
        "completionEvent",
        "",
        "uiTypeCode",
        "Lkotlin/Function0;",
        "",
        "onReceiverCompleted",
        "completed",
        "(Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "cancelled",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "timedout",
        "Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;",
        "protocolErrorEvent",
        "protocolError",
        "(Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;Lkotlin/jvm/functions/Function0;)V",
        "Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;",
        "runtimeErrorEvent",
        "runtimeError",
        "(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V",
        "La/a/a/a/g/b;",
        "a",
        "La/a/a/a/g/b;",
        "imageCache",
        "La/a/a/a/e/r;",
        "b",
        "La/a/a/a/e/r;",
        "logger",
        "<init>",
        "(La/a/a/a/g/b;La/a/a/a/e/r;)V",
        "()V",
        "3ds2sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:La/a/a/a/g/b;

.field public final b:La/a/a/a/e/r;


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, La/a/a/a/g/b$a;->c:La/a/a/a/g/b$a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;-><init>(La/a/a/a/g/b;La/a/a/a/e/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/g/b;La/a/a/a/e/r;)V
    .registers 4
    .param p1    # La/a/a/a/g/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/e/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->a:La/a/a/a/g/b;

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->b:La/a/a/a/e/r;

    return-void
.end method

.method public synthetic constructor <init>(La/a/a/a/g/b;La/a/a/a/e/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    sget-object p2, La/a/a/a/e/r;->a:La/a/a/a/e/r$a;

    invoke-virtual {p2}, La/a/a/a/e/r$a;->a()La/a/a/a/e/r;

    move-result-object p2

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;-><init>(La/a/a/a/g/b;La/a/a/a/e/r;)V

    return-void
.end method


# virtual methods
.method public cancelled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiTypeCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onReceiverCompleted"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->b:La/a/a/a/e/r;

    const-string p2, "StripeChallengeStatusReceiver#cancelled()"

    invoke-interface {p1, p2}, La/a/a/a/e/r;->a(Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->a:La/a/a/a/g/b;

    invoke-interface {p1}, La/a/a/a/g/b;->a()V

    return-void
.end method

.method public completed(Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiTypeCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onReceiverCompleted"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->b:La/a/a/a/e/r;

    const-string p2, "StripeChallengeStatusReceiver#completed()"

    invoke-interface {p1, p2}, La/a/a/a/e/r;->a(Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->a:La/a/a/a/g/b;

    invoke-interface {p1}, La/a/a/a/g/b;->a()V

    return-void
.end method

.method public protocolError(Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "protocolErrorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onReceiverCompleted"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->b:La/a/a/a/e/r;

    const-string p2, "StripeChallengeStatusReceiver#protocolError()"

    invoke-interface {p1, p2}, La/a/a/a/e/r;->a(Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->a:La/a/a/a/g/b;

    invoke-interface {p1}, La/a/a/a/g/b;->a()V

    return-void
.end method

.method public runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runtimeErrorEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onReceiverCompleted"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->b:La/a/a/a/e/r;

    const-string p2, "StripeChallengeStatusReceiver#runtimeError()"

    invoke-interface {p1, p2}, La/a/a/a/e/r;->a(Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->a:La/a/a/a/g/b;

    invoke-interface {p1}, La/a/a/a/g/b;->a()V

    return-void
.end method

.method public timedout(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uiTypeCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onReceiverCompleted"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->b:La/a/a/a/e/r;

    const-string p2, "StripeChallengeStatusReceiver#timedout()"

    invoke-interface {p1, p2}, La/a/a/a/e/r;->a(Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/StripeChallengeStatusReceiver;->a:La/a/a/a/g/b;

    invoke-interface {p1}, La/a/a/a/g/b;->a()V

    return-void
.end method
