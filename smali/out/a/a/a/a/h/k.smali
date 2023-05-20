.class public final La/a/a/a/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/h/l;


# direct methods
.method public constructor <init>(La/a/a/a/h/l;)V
    .registers 2

    iput-object p1, p0, La/a/a/a/h/k;->a:La/a/a/a/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, La/a/a/a/h/k;->a:La/a/a/a/h/l;

    .line 2
    iget-object v0, p1, La/a/a/a/h/l;->r:Landroid/content/Intent;

    if-eqz v0, :cond_17

    iget-object v1, p1, La/a/a/a/h/l;->u:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;

    sget-object v2, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->Timeout:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    invoke-interface {v1, v0, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;->start(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V

    :cond_17
    iget-object v0, p1, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object p1, p1, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_24
    return-void
.end method
