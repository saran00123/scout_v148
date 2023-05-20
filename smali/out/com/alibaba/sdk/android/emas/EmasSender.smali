.class public Lcom/alibaba/sdk/android/emas/EmasSender;
.super Ljava/lang/Object;
.source "EmasSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/emas/EmasSender$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmasSender"


# instance fields
.field private background:Z

.field private mCacheManager:Lcom/alibaba/sdk/android/emas/a;

.field private mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

.field private mSendManager:Lcom/alibaba/sdk/android/emas/h;

.field private singleLogLimitCapacity:I


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)V
    .registers 11

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->background:Z

    .line 21
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->singleLogLimitCapacity:I

    .line 23
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$100(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 24
    new-instance v0, Lcom/alibaba/sdk/android/emas/c;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$500(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/emas/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    .line 25
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$600(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v1

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$700(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$800(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/emas/c;->a(III)V

    .line 28
    :cond_3a
    new-instance v0, Lcom/alibaba/sdk/android/emas/h;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/emas/h;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender;Lcom/alibaba/sdk/android/emas/c;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    .line 29
    iget-object v2, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;

    move-result-object v3

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$900(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1000(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1100(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/sdk/android/emas/h;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/h;->setHost(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1300(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/h;->a(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1400(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/h;->openHttp(Z)V

    .line 33
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1500(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Lcom/alibaba/sdk/android/emas/PreSendHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/PreSendHandler;)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/h;->d()V

    .line 36
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1600(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 37
    new-instance v0, Lcom/alibaba/sdk/android/emas/a;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1700(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$1800(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/emas/a;-><init>(Lcom/alibaba/sdk/android/emas/h;II)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/a;

    .line 40
    :cond_a0
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/a;

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    if-eqz v0, :cond_bc

    .line 41
    :cond_a8
    new-instance v0, Lcom/alibaba/sdk/android/emas/g;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/emas/g;-><init>()V

    .line 42
    new-instance v1, Lcom/alibaba/sdk/android/emas/EmasSender$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/emas/EmasSender$1;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/g;->a(Lcom/alibaba/sdk/android/emas/g$a;)V

    .line 54
    invoke-static {p1}, Lcom/alibaba/sdk/android/emas/EmasSender$Builder;->access$200(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_bc
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;Lcom/alibaba/sdk/android/emas/EmasSender$1;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/emas/EmasSender;-><init>(Lcom/alibaba/sdk/android/emas/EmasSender$Builder;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/alibaba/sdk/android/emas/EmasSender;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->background:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/alibaba/sdk/android/emas/EmasSender;)Lcom/alibaba/sdk/android/emas/a;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/a;

    return-object p0
.end method


# virtual methods
.method public changeHost(Ljava/lang/String;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/h;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method isBackground()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->background:Z

    return v0
.end method

.method public openHttp(Z)V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/h;->openHttp(Z)V

    return-void
.end method

.method public send(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 71
    iget-object v1, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/h;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/SendService;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/h;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/SendService;->getChangeHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_8a

    .line 78
    :cond_22
    iget-object v1, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/h;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v2

    iget-object v1, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/emas/h;->a()Lcom/alibaba/sdk/android/tbrest/SendService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/SendService;->getAppKey()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string v2, "UTF-8"

    .line 81
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    .line 83
    iget v3, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->singleLogLimitCapacity:I

    if-gt v2, v3, :cond_6f

    .line 84
    new-instance v2, Lcom/alibaba/sdk/android/emas/e;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-direct {v2, v3, v1, p1, p2}, Lcom/alibaba/sdk/android/emas/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 86
    iget-object v1, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->mCacheManager:Lcom/alibaba/sdk/android/emas/a;

    if-eqz v1, :cond_69

    .line 88
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/emas/a;->a(Lcom/alibaba/sdk/android/emas/e;)V

    goto :goto_89

    .line 91
    :cond_69
    iget-object v1, v0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/emas/h;->b(Lcom/alibaba/sdk/android/emas/e;)V

    goto :goto_89

    .line 94
    :cond_6f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmasSender send failed. build data is exceed limit. current length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_89

    :cond_84
    const-string v1, "EmasSender send failed. build data is null."

    .line 97
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_89
    return-void

    :cond_8a
    :goto_8a
    const-string v1, "EmasSender send failed. appkey or host is empty."

    .line 73
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/EmasSender;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/emas/h;->setUserNick(Ljava/lang/String;)V

    return-void
.end method
