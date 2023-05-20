.class public final Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
.super Ljava/lang/Object;
.source "EmasSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/emas/EmasSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private businessKey:Ljava/lang/String;

.field private cache:Z

.field private cacheLimitCapacity:I

.field private cacheLimitCount:I

.field private channel:Ljava/lang/String;

.field private context:Landroid/app/Application;

.field private diskCache:Z

.field private diskCacheLimitCapacity:I

.field private diskCacheLimitCount:I

.field private diskCacheLimitDay:I

.field private host:Ljava/lang/String;

.field private openHttp:Z

.field private preSendHandler:Lcom/alibaba/sdk/android/emas/PreSendHandler;

.field private singleLogLimitCapacity:I

.field private userNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "common"

    .line 128
    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->businessKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cache:Z

    const/16 v1, 0x14

    .line 131
    iput v1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cacheLimitCount:I

    const v1, 0x32000

    .line 132
    iput v1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->singleLogLimitCapacity:I

    const/high16 v1, 0x200000

    .line 133
    iput v1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cacheLimitCapacity:I

    .line 135
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCache:Z

    const/16 v0, 0x32

    .line 136
    iput v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitCount:I

    const/high16 v0, 0x6400000

    .line 137
    iput v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitCapacity:I

    const/4 v0, 0x5

    .line 138
    iput v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitDay:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I
    .registers 1

    .line 105
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->singleLogLimitCapacity:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCache:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->userNick:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->openHttp:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Lcom/alibaba/sdk/android/emas/PreSendHandler;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->preSendHandler:Lcom/alibaba/sdk/android/emas/PreSendHandler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cache:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I
    .registers 1

    .line 105
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cacheLimitCount:I

    return p0
.end method

.method static synthetic access$1800(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I
    .registers 1

    .line 105
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cacheLimitCapacity:I

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->context:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->businessKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I
    .registers 1

    .line 105
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitCount:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I
    .registers 1

    .line 105
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitCapacity:I

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I
    .registers 1

    .line 105
    iget p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitDay:I

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public appKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public appSecret(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method public appVersion(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/alibaba/sdk/android/emas/EmasSender;
    .registers 3

    .line 222
    new-instance v0, Lcom/alibaba/sdk/android/emas/EmasSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/emas/EmasSender;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;Lcom/alibaba/sdk/android/emas/EmasSender$1;)V

    return-object v0
.end method

.method public businessKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->businessKey:Ljava/lang/String;

    return-object p0
.end method

.method public cache(Z)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 187
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cache:Z

    return-object p0
.end method

.method public cacheLimitCount(I)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 192
    iput p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->cacheLimitCount:I

    return-object p0
.end method

.method public channel(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public context(Landroid/app/Application;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->context:Landroid/app/Application;

    return-object p0
.end method

.method public diskCache(Z)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 197
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCache:Z

    return-object p0
.end method

.method public diskCacheLimitCount(I)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 202
    iput p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitCount:I

    return-object p0
.end method

.method public diskCacheLimitDay(I)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 207
    iput p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->diskCacheLimitDay:I

    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public openHttp(Z)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 177
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->openHttp:Z

    return-object p0
.end method

.method public preSendHandler(Lcom/alibaba/sdk/android/emas/PreSendHandler;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->preSendHandler:Lcom/alibaba/sdk/android/emas/PreSendHandler;

    return-object p0
.end method

.method public userNick(Ljava/lang/String;)Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->userNick:Ljava/lang/String;

    return-object p0
.end method
