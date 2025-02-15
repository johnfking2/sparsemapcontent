/*
 * Licensed to the Sakai Foundation (SF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The SF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */
package org.sakaiproject.nakamura.lite.storage.jdbc;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Map;

import org.sakaiproject.nakamura.api.lite.StorageClientException;
import org.sakaiproject.nakamura.lite.CachingManager;
import org.sakaiproject.nakamura.lite.storage.DisposableIterator;

public interface Indexer {

    void index(Map<String, PreparedStatement> statementCache,
            String keySpace, String columnFamily, String key, String rid, Map<String, Object> values)
            throws StorageClientException, SQLException;

    DisposableIterator<Map<String, Object>> find(String keySpace, String columnFamily,
            Map<String, Object> properties, CachingManager cachingManager) throws StorageClientException;

}
