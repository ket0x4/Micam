.class public Lcom/android/camera/CameraStat;
.super Ljava/lang/Object;
.source "CameraStat.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CameraStat"

.field private static sDumpStatEvent:Z

.field private static sIsAnonymous:Z

.field private static sIsCounterEventEnabled:Z

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ro.product.mod_device"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraStat;->CHANNEL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " category:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " key:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p0, " value:"

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p4, :cond_2

    const-string p0, "\n"

    .line 289
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "params:"

    .line 290
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p1, p0, -0x1

    const-string p2, "]"

    .line 295
    invoke-virtual {v0, p1, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    sget-object p0, Lcom/android/camera/CameraStat;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "camera.debug.dump_stat_event"

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000f

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    .line 188
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f05000e

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcom/android/camera/CameraStat;->sIsCounterEventEnabled:Z

    .line 190
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean p0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    :cond_0
    return-void
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    .line 200
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 242
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 243
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    .line 249
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "CalculateEvent"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 257
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    .line 263
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CalculateEvent"

    invoke-static {p3, p0, p1, p2, p4}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 216
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 217
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    .line 223
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "CountEvent"

    .line 224
    invoke-static {v1, p0, p1, v0, v0}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 229
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 230
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    .line 236
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "CountEvent"

    .line 237
    invoke-static {v1, p0, p1, v0, p2}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static recordPageEnd()V
    .locals 1

    .line 210
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    return-void
.end method

.method public static recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 204
    sget-boolean p0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 269
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 270
    sget-boolean v0, Lcom/android/camera/CameraStat;->sIsAnonymous:Z

    .line 276
    :cond_0
    sget-boolean v0, Lcom/android/camera/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "PropertyEvent"

    .line 277
    invoke-static {v1, p0, p1, p2, v0}, Lcom/android/camera/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
