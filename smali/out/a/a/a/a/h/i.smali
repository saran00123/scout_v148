.class public final La/a/a/a/h/i;
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


# direct methods
.method public constructor <init>(La/a/a/a/h/l;)V
    .registers 2

    iput-object p1, p0, La/a/a/a/h/i;->a:La/a/a/a/h/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, La/a/a/a/h/i;->a:La/a/a/a/h/l;

    sget-object v1, Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;->ProtocolError:Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;

    invoke-static {v0, v1}, La/a/a/a/h/l;->a(La/a/a/a/h/l;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V

    iget-object v0, p0, La/a/a/a/h/i;->a:La/a/a/a/h/l;

    .line 2
    iget-object v0, v0, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
