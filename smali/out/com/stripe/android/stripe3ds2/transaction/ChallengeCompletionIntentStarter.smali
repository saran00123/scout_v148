.class public interface abstract Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$a;,
        Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008g\u0018\u0000 \t2\u00020\u0001:\u0002\t\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;",
        "",
        "Landroid/content/Intent;",
        "intent",
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;",
        "outcome",
        "",
        "start",
        "(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V",
        "Companion",
        "a",
        "3ds2sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_OUTCOME:Ljava/lang/String; = "extra_outcome"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;->$$INSTANCE:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;

    sput-object v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;->Companion:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;

    return-void
.end method


# virtual methods
.method public abstract start(Landroid/content/Intent;Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/transaction/ChallengeFlowOutcome;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
