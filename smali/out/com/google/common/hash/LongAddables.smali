.class final Lcom/google/common/hash/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/hash/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    :try_start_0
    new-instance v0, Lcom/google/common/hash/LongAdder;

    invoke-direct {v0}, Lcom/google/common/hash/LongAdder;-><init>()V

    .line 32
    new-instance v0, Lcom/google/common/hash/LongAddables$1;

    invoke-direct {v0}, Lcom/google/common/hash/LongAddables$1;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    .line 40
    :catch_b
    new-instance v0, Lcom/google/common/hash/LongAddables$2;

    invoke-direct {v0}, Lcom/google/common/hash/LongAddables$2;-><init>()V

    .line 48
    :goto_10
    sput-object v0, Lcom/google/common/hash/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/hash/LongAddable;
    .registers 1

    .line 52
    sget-object v0, Lcom/google/common/hash/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/LongAddable;

    return-object v0
.end method
