.class public Lcom/alibaba/sdk/android/tbrest/request/BizResponse;
.super Ljava/lang/Object;
.source "BizResponse.java"


# static fields
.field static final DENY_SERVICE:I = 0x6b

.field static final NGX_ADASH_DENY_SERVICE:I = 0x74

.field static final NGX_ADASH_DISABLE_RTLOG:I = 0x73

.field static final NGX_ADASH_DOWNGRADE_V1:I = 0x6d

.field static final NO_ERROR:I = 0x0

.field static final UNKNOWN_ERROR:I = -0x1


# instance fields
.field public data:Ljava/lang/String;

.field errCode:I

.field rt:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->errCode:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->rt:J

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    .line 24
    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/request/BizResponse;->errCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
