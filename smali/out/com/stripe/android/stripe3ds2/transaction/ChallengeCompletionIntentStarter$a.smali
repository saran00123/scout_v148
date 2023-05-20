.class public final Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;I)V
    .registers 4
    .param p1    # Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->a:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    iput p2, p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;II)V
    .registers 4

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;-><init>(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;Z)Landroid/content/Intent;
    .registers 6
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1e

    goto :goto_23

    :cond_1e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "extra_outcome"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent()\n               \u2026OUTCOME, outcome.ordinal)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3d

    const/high16 p2, 0x2000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3d
    return-object p1
.end method

.method public start(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V
    .registers 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->b:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->a:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->a(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;Z)Landroid/content/Intent;

    move-result-object p1

    iget p2, p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->b:I

    invoke-virtual {v0, p1, p2}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;->startActivityForResult$3ds2sdk_release(Landroid/content/Intent;I)V

    goto :goto_25

    :cond_1b
    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->a:Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;->a(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;Z)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;->startActivity$3ds2sdk_release(Landroid/content/Intent;)V

    :goto_25
    return-void
.end method
