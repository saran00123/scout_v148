.class public Lcom/xiaomi/push/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/hg;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;
    .registers 11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    return-object v2

    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_42

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v6, v7, :cond_3d

    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/push/hl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_3d
    move-object v6, v0

    move-object v8, v2

    move-object v9, v8

    move-object v7, v3

    goto :goto_46

    :cond_42
    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :cond_46
    :goto_46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6d

    const/4 v2, 0x4

    if-ne v0, v2, :cond_59

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_46

    :cond_59
    if-ne v0, v1, :cond_46

    if-nez v9, :cond_63

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    :cond_63
    invoke-static {p0}, Lcom/xiaomi/push/service/k;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_6d
    new-instance p0, Lcom/xiaomi/push/gx;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/xiaomi/push/gx;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/hh;->a()Lcom/xiaomi/push/hh;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "xm:chat"

    invoke-virtual {v0, v1, v2, p0}, Lcom/xiaomi/push/hh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;
    .registers 5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_f

    if-eq v0, v2, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    :cond_f
    if-ne v0, v2, :cond_16

    invoke-static {p1}, Lcom/xiaomi/push/service/k;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method
