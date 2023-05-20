.class public final Lcom/xiaomi/push/gp;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x1388

.field private static a:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I = 0x50910

.field private static c:I = 0x927c0

.field private static d:I = 0x50910


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/xiaomi/push/gp;->a:Ljava/util/Vector;

    :try_start_7
    invoke-static {}, Lcom/xiaomi/push/gp;->a()[Ljava/lang/ClassLoader;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_af

    aget-object v3, v0, v2

    const-string v4, "META-INF/smack-config.xml"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    :catch_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_23} :catch_ab

    const/4 v5, 0x0

    :try_start_24
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v6, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const-string v6, "UTF-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :cond_3f
    const/4 v8, 0x2

    if-ne v6, v8, :cond_91

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "className"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-static {v4}, Lcom/xiaomi/push/gp;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    :cond_52
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "packetReplyTimeout"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    sget v6, Lcom/xiaomi/push/gp;->a:I

    invoke-static {v4, v6}, Lcom/xiaomi/push/gp;->a(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    sput v6, Lcom/xiaomi/push/gp;->a:I

    goto :goto_91

    :cond_67
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "keepAliveInterval"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    sget v6, Lcom/xiaomi/push/gp;->b:I

    invoke-static {v4, v6}, Lcom/xiaomi/push/gp;->a(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v6

    sput v6, Lcom/xiaomi/push/gp;->b:I

    goto :goto_91

    :cond_7c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "mechName"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    sget-object v6, Lcom/xiaomi/push/gp;->a:Ljava/util/Vector;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_91
    :goto_91
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_95} :catch_9e
    .catchall {:try_start_24 .. :try_end_95} :catchall_9c

    if-ne v6, v7, :cond_3f

    :goto_97
    :try_start_97
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_17

    goto/16 :goto_17

    :catchall_9c
    move-exception v0

    goto :goto_a3

    :catch_9e
    move-exception v4

    :try_start_9f
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_9c

    goto :goto_97

    :goto_a3
    :try_start_a3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a6
    throw v0
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a7} :catch_ab

    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_af
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    sget v0, Lcom/xiaomi/push/gp;->b:I

    return v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;I)I
    .registers 2

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return p1
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "3.1.0"

    return-object v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1e

    :catch_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! A startup class specified in smack-config.xml could not be loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method private static a()[Ljava/lang/ClassLoader;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/ClassLoader;

    const-class v1, Lcom/xiaomi/push/gp;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_1d
    if-ge v2, v3, :cond_29

    aget-object v4, v0, v2

    if-eqz v4, :cond_26

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_29
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/ClassLoader;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/xiaomi/push/gp;->c:I

    return v0
.end method
