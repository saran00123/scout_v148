.class public final La/a/a/a/h/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/h/r$a;
    }
.end annotation


# static fields
.field public static final j:La/a/a/a/h/r$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:La/a/a/a/f/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:La/a/a/a/e/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:La/a/a/a/e/f$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:La/a/a/a/e/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/content/Intent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La/a/a/a/h/r$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/h/r$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/h/r;->j:La/a/a/a/h/r$a;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/e/f$a;La/a/a/a/e/f$b;La/a/a/a/e/m$a;Landroid/content/Intent;I)V
    .registers 10
    .param p1    # Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/f/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/a/a/a/e/f$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # La/a/a/a/e/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La/a/a/a/e/m$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "cresData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creqData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiCustomization"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creqExecutorConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creqExecutorFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorExecutorFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/h/r;->b:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    iput-object p2, p0, La/a/a/a/h/r;->c:La/a/a/a/f/a;

    iput-object p3, p0, La/a/a/a/h/r;->d:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    iput-object p4, p0, La/a/a/a/h/r;->e:La/a/a/a/e/f$a;

    iput-object p5, p0, La/a/a/a/h/r;->f:La/a/a/a/e/f$b;

    iput-object p6, p0, La/a/a/a/h/r;->g:La/a/a/a/e/m$a;

    iput-object p7, p0, La/a/a/a/h/r;->h:Landroid/content/Intent;

    iput p8, p0, La/a/a/a/h/r;->i:I

    invoke-virtual {p2}, La/a/a/a/f/a;->a()Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    move-result-object p1

    iput-object p1, p0, La/a/a/a/h/r;->a:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/r;->h:Landroid/content/Intent;

    return-object v0
.end method

.method public final b()La/a/a/a/f/a;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/r;->c:La/a/a/a/f/a;

    return-object v0
.end method

.method public final c()La/a/a/a/e/f$a;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/r;->e:La/a/a/a/e/f$a;

    return-object v0
.end method

.method public final d()Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/r;->b:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    return-object v0
.end method

.method public final e()Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/r;->d:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    return-object v0
.end method
