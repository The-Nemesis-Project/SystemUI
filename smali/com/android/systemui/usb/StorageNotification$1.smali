.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 114
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v9, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 116
    .local v6, notificationManager:Landroid/app/NotificationManager;
    if-nez v6, :cond_1

    .line 133
    .end local v6           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v6       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->MediaStorageMap:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 119
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;

    .line 120
    .local v5, noti:Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 121
    .local v7, r:Landroid/content/res/Resources;
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageTitleId:I
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$400(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 122
    .local v8, title:Ljava/lang/CharSequence;
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageMessageId:I
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$500(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 123
    .local v4, message:Ljava/lang/CharSequence;
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$600(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v9

    iput-object v8, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 124
    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$600(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v10, v10, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$600(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v8, v4, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, deleteIntent:Landroid/content/Intent;
    const-string v10, "nid"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/Serializable;

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$700(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v10, v10, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v10, v12, v1, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iput-object v10, v9, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static {v10}, Lcom/android/systemui/usb/StorageNotification;->access$700(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 130
    .end local v1           #deleteIntent:Landroid/content/Intent;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v5           #noti:Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
    .end local v6           #notificationManager:Landroid/app/NotificationManager;
    .end local v7           #r:Landroid/content/res/Resources;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_2
    const-string v9, "android.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 131
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    #getter for: Lcom/android/systemui/usb/StorageNotification;->MediaStorageMap:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/HashMap;

    move-result-object v9

    const-string v10, "nid"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
