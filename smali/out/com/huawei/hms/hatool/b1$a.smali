.class public synthetic Lcom/huawei/hms/hatool/b1$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hatool/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/huawei/hms/hatool/w0;->values()[Lcom/huawei/hms/hatool/w0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/hms/hatool/b1$a;->a:[I

    :try_start_9
    sget-object v0, Lcom/huawei/hms/hatool/b1$a;->a:[I

    sget-object v1, Lcom/huawei/hms/hatool/w0;->c:Lcom/huawei/hms/hatool/w0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/huawei/hms/hatool/b1$a;->a:[I

    sget-object v1, Lcom/huawei/hms/hatool/w0;->a:Lcom/huawei/hms/hatool/w0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/huawei/hms/hatool/b1$a;->a:[I

    sget-object v1, Lcom/huawei/hms/hatool/w0;->b:Lcom/huawei/hms/hatool/w0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
