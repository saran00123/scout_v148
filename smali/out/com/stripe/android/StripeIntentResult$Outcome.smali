.class public interface abstract annotation Lcom/stripe/android/StripeIntentResult$Outcome;
.super Ljava/lang/Object;
.source "StripeIntentResult.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/StripeIntentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Outcome"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/StripeIntentResult$Outcome$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0002\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/android/StripeIntentResult$Outcome;",
        "",
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

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CANCELED:I = 0x3

.field public static final Companion:Lcom/stripe/android/StripeIntentResult$Outcome$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FAILED:I = 0x2

.field public static final SUCCEEDED:I = 0x1

.field public static final TIMEDOUT:I = 0x4

.field public static final UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/stripe/android/StripeIntentResult$Outcome$Companion;->$$INSTANCE:Lcom/stripe/android/StripeIntentResult$Outcome$Companion;

    sput-object v0, Lcom/stripe/android/StripeIntentResult$Outcome;->Companion:Lcom/stripe/android/StripeIntentResult$Outcome$Companion;

    return-void
.end method
