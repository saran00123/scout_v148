.class public final La/a/a/a/h/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/h/l;->a(La/a/a/a/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "La/a/a/a/e/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/h/l;


# direct methods
.method public constructor <init>(La/a/a/a/h/l;)V
    .registers 2

    iput-object p1, p0, La/a/a/a/h/l$b;->a:La/a/a/a/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .registers 16

    check-cast p1, La/a/a/a/e/g;

    .line 1
    instance-of v0, p1, La/a/a/a/e/g$c;

    const-string v1, ""

    if-eqz v0, :cond_75

    iget-object v0, p0, La/a/a/a/h/l$b;->a:La/a/a/a/h/l;

    check-cast p1, La/a/a/a/e/g$c;

    .line 2
    iget-object v2, p1, La/a/a/a/e/g$c;->a:La/a/a/a/f/a;

    .line 3
    iget-object v6, p1, La/a/a/a/e/g$c;->b:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->isChallengeCompleted()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, v0, La/a/a/a/h/l;->j:La/a/a/a/h/a;

    .line 5
    iget-object p1, p1, La/a/a/a/h/a;->d:La/a/a/a/e/g0;

    invoke-interface {p1}, La/a/a/a/e/g0;->b()V

    .line 6
    iget-object p1, v2, La/a/a/a/f/a;->f:La/a/a/a/f/a$a;

    if-eqz p1, :cond_32

    .line 7
    iget-object p1, v0, La/a/a/a/h/l;->m:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    iget-object v1, v0, La/a/a/a/h/l;->h:Ljava/lang/String;

    new-instance v2, La/a/a/a/h/m;

    invoke-direct {v2, v0}, La/a/a/a/h/m;-><init>(La/a/a/a/h/l;)V

    invoke-interface {p1, v1, v2}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->cancelled(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_f6

    :cond_32
    invoke-virtual {v6}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getTransStatus()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    move-object p1, v1

    :goto_3a
    iget-object v1, v0, La/a/a/a/h/l;->m:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    new-instance v2, Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;

    invoke-virtual {v6}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getSdkTransId()Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;-><init>(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;)V

    iget-object v3, v0, La/a/a/a/h/l;->h:Ljava/lang/String;

    new-instance v4, La/a/a/a/h/n;

    invoke-direct {v4, v0, p1}, La/a/a/a/h/n;-><init>(La/a/a/a/h/l;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->completed(Lcom/stripe/android/stripe3ds2/transaction/CompletionEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_f6

    :cond_51
    sget-object v3, La/a/a/a/e/j;->d:La/a/a/a/e/j$a;

    new-instance v4, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    iget-object p1, v0, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-direct {v4, p1}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;-><init>(Landroid/app/Activity;)V

    iget-object v5, v0, La/a/a/a/h/l;->k:La/a/a/a/f/a;

    iget-object v7, v0, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    iget-object v8, v0, La/a/a/a/h/l;->n:La/a/a/a/e/f$a;

    iget-object v11, v0, La/a/a/a/h/l;->r:Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x160

    invoke-static/range {v3 .. v13}, La/a/a/a/e/j$a;->a(La/a/a/a/e/j$a;Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;La/a/a/a/f/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/e/f$a;La/a/a/a/e/f$b;La/a/a/a/e/m$a;Landroid/content/Intent;II)La/a/a/a/e/j;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/a/e/j;->b()V

    iget-object p1, v0, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto/16 :goto_f6

    .line 8
    :cond_75
    instance-of v0, p1, La/a/a/a/e/g$a;

    if-eqz v0, :cond_b2

    iget-object v0, p0, La/a/a/a/h/l$b;->a:La/a/a/a/h/l;

    check-cast p1, La/a/a/a/e/g$a;

    .line 9
    iget-object p1, p1, La/a/a/a/e/g$a;->a:La/a/a/a/f/c;

    .line 10
    iget-object v2, v0, La/a/a/a/h/l;->m:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    const-string v3, "errorData"

    .line 11
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/stripe/android/stripe3ds2/transaction/ErrorMessage;

    .line 12
    iget-object v4, p1, La/a/a/a/f/c;->b:Ljava/lang/String;

    if-eqz v4, :cond_8d

    move-object v1, v4

    .line 13
    :cond_8d
    iget-object v4, p1, La/a/a/a/f/c;->d:Ljava/lang/String;

    .line 14
    iget-object v5, p1, La/a/a/a/f/c;->f:Ljava/lang/String;

    .line 15
    iget-object v6, p1, La/a/a/a/f/c;->g:Ljava/lang/String;

    .line 16
    invoke-direct {v3, v1, v4, v5, v6}, Lcom/stripe/android/stripe3ds2/transaction/ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;

    .line 17
    iget-object v4, p1, La/a/a/a/f/c;->j:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 18
    invoke-direct {v1, v4, v3}, Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;-><init>(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Lcom/stripe/android/stripe3ds2/transaction/ErrorMessage;)V

    .line 19
    new-instance v3, La/a/a/a/h/i;

    invoke-direct {v3, v0}, La/a/a/a/h/i;-><init>(La/a/a/a/h/l;)V

    invoke-interface {v2, v1, v3}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->protocolError(Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;Lkotlin/jvm/functions/Function0;)V

    iget-object v1, v0, La/a/a/a/h/l;->j:La/a/a/a/h/a;

    .line 20
    iget-object v1, v1, La/a/a/a/h/a;->d:La/a/a/a/e/g0;

    invoke-interface {v1}, La/a/a/a/e/g0;->b()V

    .line 21
    iget-object v0, v0, La/a/a/a/h/l;->q:La/a/a/a/e/m;

    invoke-interface {v0, p1}, La/a/a/a/e/m;->a(La/a/a/a/f/c;)V

    goto :goto_f6

    .line 22
    :cond_b2
    instance-of v0, p1, La/a/a/a/e/g$b;

    if-eqz v0, :cond_cc

    iget-object v0, p0, La/a/a/a/h/l$b;->a:La/a/a/a/h/l;

    check-cast p1, La/a/a/a/e/g$b;

    .line 23
    iget-object p1, p1, La/a/a/a/e/g$b;->a:Ljava/lang/Throwable;

    .line 24
    iget-object v1, v0, La/a/a/a/h/l;->m:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    new-instance v2, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;

    invoke-direct {v2, p1}, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, La/a/a/a/h/j;

    invoke-direct {p1, v0}, La/a/a/a/h/j;-><init>(La/a/a/a/h/l;)V

    invoke-interface {v1, v2, p1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V

    goto :goto_f6

    .line 25
    :cond_cc
    instance-of v0, p1, La/a/a/a/e/g$d;

    if-eqz v0, :cond_f6

    iget-object v0, p0, La/a/a/a/h/l$b;->a:La/a/a/a/h/l;

    check-cast p1, La/a/a/a/e/g$d;

    .line 26
    iget-object p1, p1, La/a/a/a/e/g$d;->a:La/a/a/a/f/c;

    .line 27
    iget-object v1, v0, La/a/a/a/h/l;->j:La/a/a/a/h/a;

    .line 28
    iget-object v1, v1, La/a/a/a/h/a;->d:La/a/a/a/e/g0;

    invoke-interface {v1}, La/a/a/a/e/g0;->b()V

    .line 29
    iget-object v1, v0, La/a/a/a/h/l;->q:La/a/a/a/e/m;

    invoke-interface {v1, p1}, La/a/a/a/e/m;->a(La/a/a/a/f/c;)V

    iget-object v1, v0, La/a/a/a/h/l;->m:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    new-instance v2, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;

    invoke-direct {v2, p1}, Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;-><init>(La/a/a/a/f/c;)V

    new-instance p1, La/a/a/a/h/o;

    invoke-direct {p1, v0}, La/a/a/a/h/o;-><init>(La/a/a/a/h/l;)V

    invoke-interface {v1, v2, p1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->runtimeError(Lcom/stripe/android/stripe3ds2/transaction/RuntimeErrorEvent;Lkotlin/jvm/functions/Function0;)V

    iget-object p1, v0, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_f6
    :goto_f6
    return-void
.end method
