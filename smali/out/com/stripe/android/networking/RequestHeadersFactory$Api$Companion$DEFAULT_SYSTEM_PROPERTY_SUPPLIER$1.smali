.class final Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RequestHeadersFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/RequestHeadersFactory$Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "name",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;

    invoke-direct {v0}, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;-><init>()V

    sput-object v0, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;->INSTANCE:Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 81
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/stripe/android/networking/RequestHeadersFactory$Api$Companion$DEFAULT_SYSTEM_PROPERTY_SUPPLIER$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_e

    :cond_c
    const-string p1, ""

    :goto_e
    return-object p1
.end method
