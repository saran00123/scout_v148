.class public final Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;",
        "",
        "",
        "EXTRA_OUTCOME",
        "Ljava/lang/String;",
        "<init>",
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


# static fields
.field public static final synthetic $$INSTANCE:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;

.field public static final EXTRA_OUTCOME:Ljava/lang/String; = "extra_outcome"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;

    invoke-direct {v0}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;-><init>()V

    sput-object v0, Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;->$$INSTANCE:Lcom/stripe/android/stripe3ds2/transaction/ChallengeCompletionIntentStarter$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
