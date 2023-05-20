.class public Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;
.super Ljava/lang/Object;
.source "SendService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/tbrest/SendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestThread"
.end annotation


# instance fields
.field private aArg1:Ljava/lang/Object;

.field private aArg2:Ljava/lang/Object;

.field private aArg3:Ljava/lang/Object;

.field private aEventId:I

.field private aExtData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aPage:Ljava/lang/String;

.field private aTimestamp:J

.field private adashxServerHost:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isUrl:Ljava/lang/Boolean;

.field private mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

.field final synthetic this$0:Lcom/alibaba/sdk/android/tbrest/SendService;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/tbrest/SendService;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->this$0:Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->isUrl:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/tbrest/SendService;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Boolean;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->this$0:Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->isUrl:Ljava/lang/Boolean;

    .line 259
    iput-object p5, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->context:Landroid/content/Context;

    .line 260
    iput-object p6, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->adashxServerHost:Ljava/lang/String;

    .line 261
    iput-wide p7, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aTimestamp:J

    .line 262
    iput-object p9, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aPage:Ljava/lang/String;

    .line 263
    iput p10, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aEventId:I

    .line 264
    iput-object p11, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg1:Ljava/lang/Object;

    .line 265
    iput-object p12, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg2:Ljava/lang/Object;

    .line 266
    iput-object p13, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg3:Ljava/lang/Object;

    .line 267
    iput-object p14, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aExtData:Ljava/util/Map;

    .line 268
    iput-object p4, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->appKey:Ljava/lang/String;

    .line 269
    iput-object p15, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->isUrl:Ljava/lang/Boolean;

    .line 270
    iput-object p2, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->isUrl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 277
    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->adashxServerHost:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aTimestamp:J

    iget-object v7, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aPage:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aEventId:I

    iget-object v9, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg1:Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg2:Ljava/lang/Object;

    iget-object v11, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg3:Ljava/lang/Object;

    iget-object v12, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aExtData:Ljava/util/Map;

    invoke-static/range {v1 .. v12}, Lcom/alibaba/sdk/android/tbrest/rest/f;->b(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    goto :goto_42

    .line 280
    :cond_22
    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->adashxServerHost:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aTimestamp:J

    iget-object v7, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aPage:Ljava/lang/String;

    iget v8, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aEventId:I

    iget-object v9, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg1:Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg2:Ljava/lang/Object;

    iget-object v11, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aArg3:Ljava/lang/Object;

    iget-object v12, p0, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;->aExtData:Ljava/util/Map;

    invoke-static/range {v1 .. v12}, Lcom/alibaba/sdk/android/tbrest/rest/f;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_42

    :catch_3c
    move-exception v0

    const-string v1, "send log asyn error "

    .line 284
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_42
    return-void
.end method
