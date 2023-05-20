.class public final Lcom/stripe/android/PaymentAuthWebViewStarter;
.super Ljava/lang/Object;
.source "PaymentAuthWebViewStarter.kt"

# interfaces
.implements Lcom/stripe/android/view/AuthActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentAuthWebViewStarter$Args;,
        Lcom/stripe/android/PaymentAuthWebViewStarter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/view/AuthActivityStarter<",
        "Lcom/stripe/android/PaymentAuthWebViewStarter$Args;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u000b\u000cB\u0017\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/android/PaymentAuthWebViewStarter;",
        "Lcom/stripe/android/view/AuthActivityStarter;",
        "Lcom/stripe/android/PaymentAuthWebViewStarter$Args;",
        "host",
        "Lcom/stripe/android/view/AuthActivityStarter$Host;",
        "requestCode",
        "",
        "(Lcom/stripe/android/view/AuthActivityStarter$Host;I)V",
        "start",
        "",
        "args",
        "Args",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/android/PaymentAuthWebViewStarter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_ARGS:Ljava/lang/String; = "extra_args"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field private final requestCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentAuthWebViewStarter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/PaymentAuthWebViewStarter;->Companion:Lcom/stripe/android/PaymentAuthWebViewStarter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/view/AuthActivityStarter$Host;I)V
    .registers 4
    .param p1    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter;->host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iput p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter;->requestCode:I

    return-void
.end method


# virtual methods
.method public start(Lcom/stripe/android/PaymentAuthWebViewStarter$Args;)V
    .registers 6
    .param p1    # Lcom/stripe/android/PaymentAuthWebViewStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter;->host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    .line 21
    const-class v1, Lcom/stripe/android/view/PaymentAuthWebViewActivity;

    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "extra_args"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 23
    iget v2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter;->requestCode:I

    .line 20
    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/android/view/AuthActivityStarter$Host;->startActivityForResult$stripe_release(Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method public bridge synthetic start(Ljava/lang/Object;)V
    .registers 2

    .line 14
    check-cast p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentAuthWebViewStarter;->start(Lcom/stripe/android/PaymentAuthWebViewStarter$Args;)V

    return-void
.end method
