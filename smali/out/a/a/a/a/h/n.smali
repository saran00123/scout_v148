.class public final La/a/a/a/h/n;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/h/l;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/a/a/a/h/l;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, La/a/a/a/h/n;->a:La/a/a/a/h/l;

    iput-object p2, p0, La/a/a/a/h/n;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, La/a/a/a/h/n;->a:La/a/a/a/h/l;

    iget-object v1, p0, La/a/a/a/h/n;->b:Ljava/lang/String;

    const-string v2, "Y"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->CompleteSuccessful:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->CompleteUnsuccessful:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    :goto_11
    invoke-static {v0, v1}, La/a/a/a/h/l;->a(La/a/a/a/h/l;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V

    iget-object v0, p0, La/a/a/a/h/n;->a:La/a/a/a/h/l;

    .line 2
    iget-object v0, v0, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
